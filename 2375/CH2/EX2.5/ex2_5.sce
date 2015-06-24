// Exa 2.5
clc;
clear;
close;
format('v',6)
// Given data
Alpha_dc = 0.98;
I_CBO = 12;// in µA
I_CBO = I_CBO * 10^-6;// in A
I_B = 120;// in µA
I_B = I_B * 10^-6;// in A
// Calculation of Beta_dc
Beta_dc = Alpha_dc/(1-Alpha_dc);
I_E = (1+Beta_dc)*I_B + (1+Beta_dc)*I_CBO;// in A
I_E = I_E * 10^3;// in mA
disp(I_E,"The value of I_E in mA is");
