// Exa 8.15
clc;
clear;
close;
// Given data
I_DSS = 12;// in mA
V_P = -6;// in V
V_GS = -1;// in V
g_mo = (-2*I_DSS)/V_P;// in mA/V
g_m = g_mo*(1-(V_GS/V_P));// in mS
disp(g_m,"The value of transconductance in mS is");
