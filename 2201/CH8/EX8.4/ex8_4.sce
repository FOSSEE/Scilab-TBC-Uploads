// Exa 8.4
clc;
clear;
close;
// Given data
I_DSS = 20;// in mA
V_P = -8;// in V
g_mo = 5000;// in µs
V_GS = -4;// in V
I_D = I_DSS*((1-(V_GS/V_P))^2);// in mA
disp(I_D,"The value of drain current in mA is");
g_m = g_mo*(1-(V_GS/V_P));// in µs
disp(g_m,"The transconductance in µs is");
