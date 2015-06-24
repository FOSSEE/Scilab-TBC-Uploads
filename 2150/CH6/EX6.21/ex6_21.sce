// Exa 6.21
clc;
clear;
close;
// Given data
I_DSS  = 8.4;// in mA
V_P = -3;// in V
V_GS = -1.5;// in V
I_D = I_DSS*(1-(V_GS/V_P))^2;// in mA
g_mo = -( (2*I_DSS)/V_P );// in mA/V
g_m = g_mo*(1-(V_GS/V_P));// in mA/V
disp(g_m,"The value of g_m in mA/V is");
