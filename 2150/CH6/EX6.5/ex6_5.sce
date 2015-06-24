// Exa 6.5
clc;
clear;
close;
// Given data
R_D = 3.6;// in K ohm
R_L = 10;// in K ohm
r_d = (R_D*R_L)/(R_D+R_L);// in K ohm
g_m = 5000;// in µS
g_m= g_m*10^-6;// in S
A_v = g_m *r_d;
V_out = A_v;// in V
disp(V_out*10^3,"The output volatge in mV is ");
