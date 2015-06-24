// Exa 4.2
clc;
clear;
close;
format('v',6)
// Given data
Alpha = 0.95;
I_CBO = 5* 10^-3;// in mA
I_E = 3;// in mA
// The collector current 
I_C = (Alpha*I_E)+I_CBO;// in mA
disp(I_C,"The collector current in mA is");
// The base current 
I_B = I_E-I_C;// in mA
disp(I_B,"The base current in mA is");
