// Exa 2.3
clc;
clear;
close;
format('v',4)
// Given data
Alpha_dc = 0.99;
I_C = 6;// in mA
I_CBO = 15;// in µA
I_CBO = I_CBO * 10^-3;// in mA
// I_C = Alpha_dc*I_E + I_CBO;
I_E = (I_C - I_CBO)/Alpha_dc;// in mA
I_B = I_E - I_C;// in mA
I_B = I_B * 10^3;// in µA
disp(I_B,"The value of I_B in µA is");
