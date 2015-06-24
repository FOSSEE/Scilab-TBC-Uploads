// Exa 4.12
clc;
clear;
close;
format('v',5)
// Given data
I_E = 5;// in mA
I_C = 4.95;// in mA
I_CEO = 200;// in µA
I_B = I_E-I_C;// in mA
Beta_dc = I_C/I_B;// unit less
disp(Beta_dc,"The value of Beta_dc is");
Alpha_dc = Beta_dc/(1+Beta_dc);// unit less
I_CBO = I_CEO * (1-Alpha_dc);// in µA
disp(I_CBO,"The collector-to-base leakage cuurent in µA is");
