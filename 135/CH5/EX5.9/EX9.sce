// Example 5.9 :(i) RB
//             (ii) Stability factor
//            (iii) IC at 100°C
clc, clear
bta=50;
VBE=0.7; // in volts
VCE=5; // in volts
// From Fig. 5.21
VCC=24; // in volts
RC=10e3; // in ohms
RE=500; // in ohms

disp("Part (i)");
// Applying KVL to the collector emitter circuit and putting Ic= βF*Ib
IB=(VCC-VCE)/((RC+RE)*(bta+1)); // in amperes
IC=bta*IB; //  at 25°C in amperes
RB=(VCE-VBE)/IB; // in ohms
RB=RB*1e-3; // in kilo-ohms
disp(RB,"RB (kΩ) =")

disp("Part (ii)");
S=(1+bta)/(1+bta*(RC+RE)/(RC+RE+RB*1e3)); // Stability factor
disp(S,"Stability factor =");

disp("Part (iii)");
// From Table 5.1
del_ICO=(20-0.1)*1e-9; // in amperes
del_IC=S*del_ICO; // in amperes
IC=IC+del_IC; //  at 100°C in amperes
IC=IC*1e3; //  at 100°C in mili-amperes
disp(IC,"IC at 100°C (mA) =");