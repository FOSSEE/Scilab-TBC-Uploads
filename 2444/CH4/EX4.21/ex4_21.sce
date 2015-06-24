// Exa 4.21
clc;
clear;
close;
format('v',5)
// Given data
g_m = 2500;// in µS
g_m = g_m * 10^-6;// in S
R_L = 12;// in k ohm
R_L = R_L * 10^3;// in ohm
//Av = -g_m*(r_d||R_D||R_L);
Av = -g_m*R_L;
disp(Av,"The voltage gain is");
