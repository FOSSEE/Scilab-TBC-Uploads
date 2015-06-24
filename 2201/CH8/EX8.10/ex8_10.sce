// Exa 8.10
clc;
clear;
close;
// Given data
I_D1 = 1.9;// in mA
I_D2 = 1;// in mA
del_I_D = I_D1-I_D2;// in mA
V_GS2 = -3.3;// in V
V_GS1 = -3;// in V
del_V_GS = V_GS1-V_GS2;// in V
g_m = del_I_D/del_V_GS;// in mA/V
g_m = g_m * 10^3;// in µ mhos
disp(g_m,"The value of transconductance in µ mhos is");
