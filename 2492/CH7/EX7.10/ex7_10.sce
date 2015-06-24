// Exa 7.10
format('v',6)
clc;
clear;
close;
// Given data
Ad = 100000;
Ac = 25;
CMRR = Ad/Ac;
CMRR_indB= 20*log10(CMRR);// in dB
disp(CMRR_indB,"Part (a) : The value of CMRR in dB is");
format('e',8)
R2 = 100;// in k ohm
R1 = 10;// in k ohm
V_B = 0.18;// in mV
V_A = 0.16;// in mV
// The output from the amplifier,
Vo = ((R2/R1)*(V_B-V_A)*10^-3) + ((R2/R1)*V_B*10^-3*(1/CMRR));// in V
disp(Vo,"Part (b) : The output from the amplifier in V is");
V_B = 2.00018;// in V
V_A = 2.00016;// in V
// The output from the amplifier,
Vo = ((R2/R1)*(V_B-V_A)) + ((R2/R1)*V_B*(1/CMRR));// in V
disp(Vo,"Part (c) : The output from the amplifier in V is"); 
