// Exa 4.12.4
clc;
clear;
close;
// Given data
I_DSS = 12;// in mA
I_DSS = I_DSS * 10^-3;// in A
V_P = -(6);// in V
V_GS = -(1);// in V
g_mo = (-2 * I_DSS)/V_P;// in A/V
g_m = g_mo * (1 - (V_GS/V_P));// in S
disp(g_m*10^3,"The value of transconductance in mS is");
