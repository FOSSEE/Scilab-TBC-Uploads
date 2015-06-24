// Exa 7.6
clc;
clear;
close;
// Given data
V_T = 1;// in V
I_D = 4;// in mA
V_GS = 5;// in V
V_GSth = 1;// in V
K = I_D/(V_GS-V_GSth)^2;// in mA/V^2
disp(K,"The value of K in mA/V^2 is");
