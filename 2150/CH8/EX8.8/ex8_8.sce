// Exa 8.8
clc;
clear;
close;
// Given data
R_f = 1;// in Mohm
R_f = R_f * 10^6;// in ohm
Ri= 1*10^6;// in ohm
R1 = Ri;// in ohm
A_VF = -(R_f/R1);
disp(A_VF,"The Voltage gain is");
