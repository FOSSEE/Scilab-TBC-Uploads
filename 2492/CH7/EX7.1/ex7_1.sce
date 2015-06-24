// Exa 7.1
format('v',6)
clc;
clear;
close;
// Given data
Ac = 35;//common mode gain in dB
Ac = 10^(Ac/20);
CMRR = 72;// in dB
CMRR = 10^(CMRR/20);
// CMRR = Ad/Ac
Ad = CMRR*Ac;
V1 = 0.16;// in mV
V2 = 0.18;// in mV
// Common mode signal
Vc = 1/2*(V1+V2);// in mV
// Difference mode signal
Vd = V2-V1;// in mV
// The output voltage
Vo = Ac*Vc+Ad*Vd;// in mV
Vo= Vo*10^-3;// in V
disp(Vo,"The output voltage in V is");
