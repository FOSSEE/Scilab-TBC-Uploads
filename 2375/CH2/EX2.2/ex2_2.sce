// Exa 2.2
clc;
clear;
close;
format('v',6)
// Given data
Alpha_dc = 0.99;
I_CBO = 10;// in µA
I_CBO = I_CBO * 10^-3;// in mA
I_E = 10;// in mA
// To calculate I_C : 
I_C = (Alpha_dc*I_E) + I_CBO;// in mA
disp(I_C,"The value of I_C in mA is");
// To calculate I_B : 
I_B = I_E-I_C;// in mA
I_B = I_B * 10^3;// in µA
disp(I_B,"The value of I_B in µA is");
