// Exa 6.30
clc;
clear;
close;
// Given data
R_D = 1;// in kohm
R_D = R_D * 10^3;// in ohm
V_in = 2;// in mV
V_in = V_in * 10^-3;// in V
R_L = 10;// in kohm
R_L = R_L * 10^3;// in ohm
r_d = (R_D*R_L)/(R_D+R_L);// in ohm
g_m = 3000;//in µS
g_m = g_m * 10^-6;// in S
A_v = g_m*r_d;
V_out = A_v*V_in;// in V
V_out = V_out * 10^3;// in mV
disp(V_out,"The output Voltage in mV is");
