#!/bin/bash

set -euo pipefail

usage() {
	cat >&2 <<EOF
Usage: $0 <version name> <source man page>...
Renders a man page to HTML suitable for inclusion in this repo, and a MDX
file including it.
This should be run from the directory the man page is in, so that \`mandoc\` correctly
determines whether to generate a "local" or "remote" link for \`.Xr\`.
EOF
}

if [ $# -lt 2 ]; then
	usage
	exit 1
fi

script_dir="$(dirname "$(realpath "$0")")"
if [[ $1 = master ]]; then
	out_dir="$script_dir/../docs"
else
	out_dir="$script_dir/../versioned_docs/version-$1"
	mkdir -p "$out_dir"
	cp "$script_dir"/support/feedback.md "$out_dir"
	sed "s/@RELEASE_NAME@/$1/g" "$script_dir"/support/index.md >"$out_dir/index.md"
fi

process_file() {
	local basename
	basename="$(basename "$1")"

	# Fragment links must use "final" formatting, as they are not processed by Docusaurus
	# Also, the `awk` script strips the wrapping `<div class="manual-text">`, but not its end tag; so, make sure to remove that last line ourselves.
	mandoc "$1" -T html -O 'fragment,man=./%N.%S;https://man7.org/linux/man-pages/man%S/%N.%S.html' | "$script_dir"/support/man_postproc.awk | head -n -1 >"$out_dir/$basename.html"
	groff -Tpdf -mdoc -wall "$1" >"$out_dir/$basename.pdf"

	{
		awk '/\.Dt/ { page = tolower($2) "(" $3 ")" } /\.Nd/ { sub(/\.Nd /, ""); print "# " page " — " $0 }' <"$1"
		cat <<EOF

import generated from '!!raw-loader!./$basename.html';

<div className="manual-text" dangerouslySetInnerHTML={{ __html: generated }} />

export const toc = [
EOF
		# Docusaurus does not parse HTML injected like above, so generate the ToC manually.
		# We do this by parsing the man page.
		# (Admittedly a bit poorly, but well enough for our use case)
		heading() {
			if [ $# -ne 1 ]; then
				# Write out this level
				cat <<EOF
{
	"value": "$2",
	"id": "${2// /_}",
	"level": $1,
},
EOF
			fi
		}

		while read -r line; do
			if [[ "$line" = ".Sh "* ]]; then
				# The post-processor skips the `NAME` section, so strip it from the ToC as well
				if [[ "$line" != ".Sh NAME" ]]; then
					heading 2 "${line#.Sh }"
				fi
			elif [[ "$line" = ".Ss "* ]]; then
				heading 3 "${line#.Ss }"
			fi
		done <"$1"
		echo '];'
	} >"$out_dir/$basename.md"
}

while [ $# -ge 2 ]; do
	process_file "$2"
	shift
done
