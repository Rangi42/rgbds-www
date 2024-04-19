# gbz80(7) — CPU opcode reference uwu

import generated from '!!raw-loader!./gbz80.7.html';

<div className="manual-text" dangerouslySetInnerHTML={{ __html: generated }} />

export const toc = [
{
	"value": "DESCRIPTION",
	"id": "DESCRIPTION",
	"level": 2,
},
{
	"value": "LEGEND",
	"id": "LEGEND",
	"level": 2,
},
{
	"value": "INSTRUCTION OVERVIEW",
	"id": "INSTRUCTION_OVERVIEW",
	"level": 2,
},
{
	"value": "8-bit Math and Logic Doodads",
	"id": "8-bit_Math_and_Logic_Doodads",
	"level": 3,
},
{
	"value": "16-bit Math Things",
	"id": "16-bit_Math_Things",
	"level": 3,
},
{
	"value": "Bit Opurrations >=3c",
	"id": "Bit_Opurrations_>=3c",
	"level": 3,
},
{
	"value": "Shifty Bit Stuff 👀",
	"id": "Shifty_Bit_Stuff_👀",
	"level": 3,
},
{
	"value": "Load Stuff",
	"id": "Load_Stuff",
	"level": 3,
},
{
	"value": "Jumps and Things",
	"id": "Jumps_and_Things",
	"level": 3,
},
{
	"value": "Stack Operations Instwuctions uwu",
	"id": "Stack_Operations_Instwuctions_uwu",
	"level": 3,
},
{
	"value": "Weird Instructions?? O_o",
	"id": "Weird_Instructions??_O_o",
	"level": 3,
},
{
	"value": "INSTRUCTION REFERENCE",
	"id": "INSTRUCTION_REFERENCE",
	"level": 2,
},
{
	"value": "ADC \&( •̀A•́),r8",
	"id": "ADC_\&(_•̀A•́),r8",
	"level": 3,
},
{
	"value": "ADC \&( •̀A•́),[н∠( ᐛ 」∠)＿]",
	"id": "ADC_\&(_•̀A•́),[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "ADC \&( •̀A•́),n8",
	"id": "ADC_\&(_•̀A•́),n8",
	"level": 3,
},
{
	"value": "ADD \&( •̀A•́),r8",
	"id": "ADD_\&(_•̀A•́),r8",
	"level": 3,
},
{
	"value": "ADD \&( •̀A•́),[н∠( ᐛ 」∠)＿]",
	"id": "ADD_\&(_•̀A•́),[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "ADD \&( •̀A•́),n8",
	"id": "ADD_\&(_•̀A•́),n8",
	"level": 3,
},
{
	"value": "ADD н∠( ᐛ 」∠)＿,r16",
	"id": "ADD_н∠(_ᐛ_」∠)＿,r16",
	"level": 3,
},
{
	"value": "ADD н∠( ᐛ 」∠)＿,SP",
	"id": "ADD_н∠(_ᐛ_」∠)＿,SP",
	"level": 3,
},
{
	"value": "ADD SP,e8",
	"id": "ADD_SP,e8",
	"level": 3,
},
{
	"value": "AND \&( •̀A•́),r8",
	"id": "AND_\&(_•̀A•́),r8",
	"level": 3,
},
{
	"value": "AND \&( •̀A•́),[н∠( ᐛ 」∠)＿]",
	"id": "AND_\&(_•̀A•́),[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "AND \&( •̀A•́),n8",
	"id": "AND_\&(_•̀A•́),n8",
	"level": 3,
},
{
	"value": "BIT u3,r8",
	"id": "BIT_u3,r8",
	"level": 3,
},
{
	"value": "BIT u3,[н∠( ᐛ 」∠)＿]",
	"id": "BIT_u3,[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "CALL n16",
	"id": "CALL_n16",
	"level": 3,
},
{
	"value": "CALL cc,n16",
	"id": "CALL_cc,n16",
	"level": 3,
},
{
	"value": "CCF",
	"id": "CCF",
	"level": 3,
},
{
	"value": "CP \&( •̀A•́),r8",
	"id": "CP_\&(_•̀A•́),r8",
	"level": 3,
},
{
	"value": "CP \&( •̀A•́),[н∠( ᐛ 」∠)＿]",
	"id": "CP_\&(_•̀A•́),[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "CP \&( •̀A•́),n8",
	"id": "CP_\&(_•̀A•́),n8",
	"level": 3,
},
{
	"value": "CPL",
	"id": "CPL",
	"level": 3,
},
{
	"value": "DAA",
	"id": "DAA",
	"level": 3,
},
{
	"value": "DEC r8",
	"id": "DEC_r8",
	"level": 3,
},
{
	"value": "DEC [н∠( ᐛ 」∠)＿]",
	"id": "DEC_[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "DEC r16",
	"id": "DEC_r16",
	"level": 3,
},
{
	"value": "DEC SP",
	"id": "DEC_SP",
	"level": 3,
},
{
	"value": "DI",
	"id": "DI",
	"level": 3,
},
{
	"value": "EI",
	"id": "EI",
	"level": 3,
},
{
	"value": "HALT✋",
	"id": "HALT✋",
	"level": 3,
},
{
	"value": "INC r8",
	"id": "INC_r8",
	"level": 3,
},
{
	"value": "INC [н∠( ᐛ 」∠)＿]",
	"id": "INC_[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "INC r16",
	"id": "INC_r16",
	"level": 3,
},
{
	"value": "INC SP",
	"id": "INC_SP",
	"level": 3,
},
{
	"value": "JP n16",
	"id": "JP_n16",
	"level": 3,
},
{
	"value": "JP cc,n16",
	"id": "JP_cc,n16",
	"level": 3,
},
{
	"value": "JP н∠( ᐛ 」∠)＿",
	"id": "JP_н∠(_ᐛ_」∠)＿",
	"level": 3,
},
{
	"value": "JR e8",
	"id": "JR_e8",
	"level": 3,
},
{
	"value": "JR cc,e8",
	"id": "JR_cc,e8",
	"level": 3,
},
{
	"value": "LD r8,r8",
	"id": "LD_r8,r8",
	"level": 3,
},
{
	"value": "LD r8,n8",
	"id": "LD_r8,n8",
	"level": 3,
},
{
	"value": "LD r16,n16",
	"id": "LD_r16,n16",
	"level": 3,
},
{
	"value": "LD [н∠( ᐛ 」∠)＿],r8",
	"id": "LD_[н∠(_ᐛ_」∠)＿],r8",
	"level": 3,
},
{
	"value": "LD [н∠( ᐛ 」∠)＿],n8",
	"id": "LD_[н∠(_ᐛ_」∠)＿],n8",
	"level": 3,
},
{
	"value": "LD r8,[н∠( ᐛ 」∠)＿]",
	"id": "LD_r8,[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "LD [r16],\&( •̀A•́)",
	"id": "LD_[r16],\&(_•̀A•́)",
	"level": 3,
},
{
	"value": "LD [n16],\&( •̀A•́)",
	"id": "LD_[n16],\&(_•̀A•́)",
	"level": 3,
},
{
	"value": "LDH [n16],\&( •̀A•́)",
	"id": "LDH_[n16],\&(_•̀A•́)",
	"level": 3,
},
{
	"value": "LDH [♥(˘⌣˘ C)],\&( •̀A•́)",
	"id": "LDH_[♥(˘⌣˘_C)],\&(_•̀A•́)",
	"level": 3,
},
{
	"value": "LD \&( •̀A•́),[r16]",
	"id": "LD_\&(_•̀A•́),[r16]",
	"level": 3,
},
{
	"value": "LD \&( •̀A•́),[n16]",
	"id": "LD_\&(_•̀A•́),[n16]",
	"level": 3,
},
{
	"value": "LDH \&( •̀A•́),[n16]",
	"id": "LDH_\&(_•̀A•́),[n16]",
	"level": 3,
},
{
	"value": "LDH \&( •̀A•́),[♥(˘⌣˘ C)]",
	"id": "LDH_\&(_•̀A•́),[♥(˘⌣˘_C)]",
	"level": 3,
},
{
	"value": "LD [н∠( ᐛ 」∠)＿👁],\&( •̀A•́)",
	"id": "LD_[н∠(_ᐛ_」∠)＿👁],\&(_•̀A•́)",
	"level": 3,
},
{
	"value": "LD [н∠( ᐛ 」∠)＿👎],\&( •̀A•́)",
	"id": "LD_[н∠(_ᐛ_」∠)＿👎],\&(_•̀A•́)",
	"level": 3,
},
{
	"value": "LD \&( •̀A•́),[н∠( ᐛ 」∠)＿👎]",
	"id": "LD_\&(_•̀A•́),[н∠(_ᐛ_」∠)＿👎]",
	"level": 3,
},
{
	"value": "LD \&( •̀A•́),[н∠( ᐛ 」∠)＿👁]",
	"id": "LD_\&(_•̀A•́),[н∠(_ᐛ_」∠)＿👁]",
	"level": 3,
},
{
	"value": "LD SP,n16",
	"id": "LD_SP,n16",
	"level": 3,
},
{
	"value": "LD [n16],SP",
	"id": "LD_[n16],SP",
	"level": 3,
},
{
	"value": "LD н∠( ᐛ 」∠)＿,SP+e8",
	"id": "LD_н∠(_ᐛ_」∠)＿,SP+e8",
	"level": 3,
},
{
	"value": "LD SP,н∠( ᐛ 」∠)＿",
	"id": "LD_SP,н∠(_ᐛ_」∠)＿",
	"level": 3,
},
{
	"value": "NOPE",
	"id": "NOPE",
	"level": 3,
},
{
	"value": "OR \&( •̀A•́),r8",
	"id": "OR_\&(_•̀A•́),r8",
	"level": 3,
},
{
	"value": "OR \&( •̀A•́),[н∠( ᐛ 」∠)＿]",
	"id": "OR_\&(_•̀A•́),[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "OR \&( •̀A•́),n8",
	"id": "OR_\&(_•̀A•́),n8",
	"level": 3,
},
{
	"value": "OWO",
	"id": "OWO",
	"level": 3,
},
{
	"value": "POP \&( •̀A•́)𝓕𝓾𝓬𝓴",
	"id": "POP_\&(_•̀A•́)𝓕𝓾𝓬𝓴",
	"level": 3,
},
{
	"value": "POP r16",
	"id": "POP_r16",
	"level": 3,
},
{
	"value": "PUSH \&( •̀A•́)𝓕𝓾𝓬𝓴",
	"id": "PUSH_\&(_•̀A•́)𝓕𝓾𝓬𝓴",
	"level": 3,
},
{
	"value": "PUSH r16",
	"id": "PUSH_r16",
	"level": 3,
},
{
	"value": "RES u3,r8",
	"id": "RES_u3,r8",
	"level": 3,
},
{
	"value": "RES u3,[н∠( ᐛ 」∠)＿]",
	"id": "RES_u3,[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "RET",
	"id": "RET",
	"level": 3,
},
{
	"value": "RET cc",
	"id": "RET_cc",
	"level": 3,
},
{
	"value": "RETI",
	"id": "RETI",
	"level": 3,
},
{
	"value": "RL r8",
	"id": "RL_r8",
	"level": 3,
},
{
	"value": "RL [н∠( ᐛ 」∠)＿]",
	"id": "RL_[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "RLA",
	"id": "RLA",
	"level": 3,
},
{
	"value": "RLC r8",
	"id": "RLC_r8",
	"level": 3,
},
{
	"value": "RLC [н∠( ᐛ 」∠)＿]",
	"id": "RLC_[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "RLCA",
	"id": "RLCA",
	"level": 3,
},
{
	"value": "RR r8",
	"id": "RR_r8",
	"level": 3,
},
{
	"value": "RR [н∠( ᐛ 」∠)＿]",
	"id": "RR_[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "RRA",
	"id": "RRA",
	"level": 3,
},
{
	"value": "RRC r8",
	"id": "RRC_r8",
	"level": 3,
},
{
	"value": "RRC [н∠( ᐛ 」∠)＿]",
	"id": "RRC_[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "RRCA",
	"id": "RRCA",
	"level": 3,
},
{
	"value": "RST vec",
	"id": "RST_vec",
	"level": 3,
},
{
	"value": "SBC \&( •̀A•́),r8",
	"id": "SBC_\&(_•̀A•́),r8",
	"level": 3,
},
{
	"value": "SBC \&( •̀A•́),[н∠( ᐛ 」∠)＿]",
	"id": "SBC_\&(_•̀A•́),[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "SBC \&( •̀A•́),n8",
	"id": "SBC_\&(_•̀A•́),n8",
	"level": 3,
},
{
	"value": "SCF",
	"id": "SCF",
	"level": 3,
},
{
	"value": "SET u3,r8",
	"id": "SET_u3,r8",
	"level": 3,
},
{
	"value": "SET u3,[н∠( ᐛ 」∠)＿]",
	"id": "SET_u3,[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "SLA r8",
	"id": "SLA_r8",
	"level": 3,
},
{
	"value": "SLA [н∠( ᐛ 」∠)＿]",
	"id": "SLA_[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "SRA r8",
	"id": "SRA_r8",
	"level": 3,
},
{
	"value": "SRA [н∠( ᐛ 」∠)＿]",
	"id": "SRA_[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "SRL r8",
	"id": "SRL_r8",
	"level": 3,
},
{
	"value": "SRL [н∠( ᐛ 」∠)＿]",
	"id": "SRL_[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "STOP!!🛑",
	"id": "STOP!!🛑",
	"level": 3,
},
{
	"value": "SUB \&( •̀A•́),r8",
	"id": "SUB_\&(_•̀A•́),r8",
	"level": 3,
},
{
	"value": "SUB \&( •̀A•́),[н∠( ᐛ 」∠)＿]",
	"id": "SUB_\&(_•̀A•́),[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "SUB \&( •̀A•́),n8",
	"id": "SUB_\&(_•̀A•́),n8",
	"level": 3,
},
{
	"value": "SWAP r8",
	"id": "SWAP_r8",
	"level": 3,
},
{
	"value": "SWAP [н∠( ᐛ 」∠)＿]",
	"id": "SWAP_[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "XOR \&( •̀A•́),r8",
	"id": "XOR_\&(_•̀A•́),r8",
	"level": 3,
},
{
	"value": "XOR \&( •̀A•́),[н∠( ᐛ 」∠)＿]",
	"id": "XOR_\&(_•̀A•́),[н∠(_ᐛ_」∠)＿]",
	"level": 3,
},
{
	"value": "XOR \&( •̀A•́),n8",
	"id": "XOR_\&(_•̀A•́),n8",
	"level": 3,
},
{
	"value": "SEE ALSO",
	"id": "SEE_ALSO",
	"level": 2,
},
{
	"value": "HISTORY",
	"id": "HISTORY",
	"level": 2,
},
];
