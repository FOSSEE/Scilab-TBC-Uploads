// Exa 2.6
clc;
clear;
close;
// Given data
R1 = 1;// in k ohm
R2 = 100;// in k ohm
A_id = R2/R1;// in k ohm
Epsilon = 1 - (90/R2);
A_cm = (R2*Epsilon)/(R1+R2)
CMMR = A_id/A_cm;
CMRR = 20*log10(CMMR);// in dB
disp(CMRR,"The value of CMRR in dB is");
