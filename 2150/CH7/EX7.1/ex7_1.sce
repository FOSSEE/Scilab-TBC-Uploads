// Exa 7.1
clc;
clear;
close;
// Given data
V_GS = 0;// in V
I_D = 4;// in mA
R = 2;// in kohm
V_DD = 15;// in V
V_DS = V_DD - (I_D*R);// in V
g_m = 2000;// in µS
g_m= g_m*10^-6;// in S
g_mo = g_m;// in S
R_D = 2;// in kohm
R_D = R_D * 10^3;// in ohm
R_L = 10;// in  kohm
R_L = R_L * 10^3;// in ohm
r_d = (R_D*R_L)/(R_D+R_L);// in ohm
A_v = g_m*r_d;
V_in = 20;// in mV
V_out = A_v * V_in;// in mV
disp(V_out,"The output voltage in mV is");
