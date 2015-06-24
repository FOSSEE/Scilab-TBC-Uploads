// Exa 8.8
clc;
clear;
close;
// Given data
V_P = -2;// in V
I_DSS = 1.65;// in mA
I_D = 0.8;// in mA
V_DD = 24;// in V
V_GS = V_P*(1- sqrt(I_D/I_DSS) );// in V
disp(V_GS,"The value of V_GS in V is");
g_mo = -(2*I_DSS)/V_P;// in mS
g_m = g_mo*(1-(V_GS/V_P));// in mS
disp(g_m,"The value of g_m in mS is");
