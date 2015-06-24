// Exa 6.9.2
clc;
clear;
close;
// Given data
I_DSS = 8;// in mA
V_P = -4;// in V
I_D = 3;// in mA
V_GS = V_P * (1 - sqrt(I_D/I_DSS));// in V
disp(V_GS,"The value of V_GS in V is");
V_DS = V_GS - V_P;// in V
disp(V_DS,"The value of V_DS in V is");
