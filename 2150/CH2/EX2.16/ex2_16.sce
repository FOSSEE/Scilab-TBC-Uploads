// Exa 2.16
clc;
clear;
close;
// Given data
V_dc = 12;// in V
R_L = 500;// in ohm
R_F = 25;// in ohm
I_dc = V_dc/R_L;// in A
V_m = I_dc * %pi * (R_L+R_F);// in V
V_rms = V_m/sqrt(2);// in V
V  = V_rms;// in V
disp(round(V),"The voltage in V is");
