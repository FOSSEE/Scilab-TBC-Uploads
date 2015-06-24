// Exa 6.5
clc;
clear;
close;
format('v',6)
// Given data
I_DSS = 1.65;// in mA
I_DSS = I_DSS * 10^-3;// in A
V_P = -2;// in V
I_D = 0.8;// in mA
I_D = I_D * 10^-3;// in A
V_DD = 24;// in V
V_GS = V_P * (1 - sqrt( I_D/I_DSS ));// in V
disp(V_GS,"The value of V_GS in V is");
g_mo = -2 * (I_DSS*10^3/V_P);// in ms
g_m = g_mo * (1 - V_GS/V_P);// in ms
disp(g_m,"The value of g_m in ms is"); 
