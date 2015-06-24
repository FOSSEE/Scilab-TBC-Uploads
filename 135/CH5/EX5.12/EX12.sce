// Example 5.12: Variation of IC over the temperature range -65°C to 175°C
clc, clear
RB_RE=2; // RB/RE
RE=4.7e3; // in ohms
IC=2e-3; // at 25°C in amperes
// From Table 5.1
bta=50; // at 25°C
S_ICO=(1+bta)*(1+RB_RE)/(1+bta+RB_RE);
S_VBE=-bta/(RE*(1+bta+RB_RE));
// From Table 5.1
bta1=20; // at -65°C
bta2=120; // at 175°C
S_bta1=IC*(1+RB_RE)/(bta*(1+bta1+RB_RE)); // For 25°C to -65°C
S_bta2=IC*(1+RB_RE)/(bta*(1+bta2+RB_RE)); // For 25°C to 175°C
// From Table 5.1

// For 25°C to -65°C
del_ICO=(0.2e-3-0.1)*1e-9; // in amperes
del_VBE=0.85-0.65; // in volts
del_bta=bta1-bta;
del_IC=S_ICO*del_ICO+S_VBE*del_VBE+S_bta1*del_bta; // in amperes
IC1=IC+del_IC; // at -65°C in amperes
IC1=IC1*1e3; //  at -65°C in mili-amperes
disp(IC1,"IC at -65°C (mA) =");

// For 25°C to 175°C
del_ICO=(3.3e3-0.1)*1e-9; // in amperes
del_VBE=0.30-0.65; // in volts
del_bta=bta2-bta;
del_IC=S_ICO*del_ICO+S_VBE*del_VBE+S_bta2*del_bta; // in amperes
IC2=IC+del_IC; // at 175°C in amperes
IC2=IC2*1e3; //  at 175°C in mili-amperes
disp(IC2,"IC at 175°C (mA) =");