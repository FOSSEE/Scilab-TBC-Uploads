// Exa 4.4
clc;
clear;
close;
format('v',6)
// Given data
R_C = 2;// in k ohm
R_C = R_C * 10^3;// in ohm
V = 2;// in V
// The collector current
I_C = V/R_C;// in A
Beta = 50;
// The base current 
I_B = I_C/Beta;// in A
I_B= I_B*10^6;// in µA
disp(I_B,"The base current in µA is");
