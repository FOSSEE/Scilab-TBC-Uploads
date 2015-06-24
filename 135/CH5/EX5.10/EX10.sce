// Example 5.10: (i) S(ICO) for RB/RE=10 and change in IC
//              (ii) S(VBE) for RB = 240 kΩ, RE = 1 kΩ and change in IC
clc, clear
bta=100;

disp("Part (i)");
RB_RE=10; // RB/RE
S_ICO=(1+bta)*(1+RB_RE)/(1+bta+RB_RE);
// From Table 5.1
del_ICO=(20-0.1)*1e-9; // in amperes
del_IC=S_ICO*del_ICO; // in amperes
del_IC=del_IC*1e6; // in micro-amperes
disp(S_ICO,"S(ICO) for RB/RE=10");
disp(del_IC,"Change in IC (μA) =");

disp("Part (ii)");
RB=240e3; // in kilo-ohms
RE=1e3; // in kilo-ohms
S_VBE=-bta/(RB+(1+bta)*RE);
// From Table 5.1
del_VBE=0.48-0.65; // in volts
del_IC=S_VBE*del_VBE; // in amperes
del_IC=del_IC*1e6; // in micro-amperes
disp(S_VBE,"S(VBE) for (RB = 240 kΩ, RE = 1 kΩ) =");
disp(del_IC,"Change in IC (μA) =");