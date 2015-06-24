// Exa 5.22
format('v',6)
clc;
clear;
close;
// Given data
V_T = 1;// in V
k = 160*10^-6;// in A/V^2
I_DQ = 160*10^-6;// in A
V_GS = V_T + sqrt(I_DQ/k);// in V
V_DD = 5;// in V
V_DSQ = 3;// in V
R_D = (V_DD - V_DSQ)/(I_DQ);// in ohm
R_D = R_D * 10^-3;// in k ohm
disp(R_D,"The value of R_D in k ohm is");
