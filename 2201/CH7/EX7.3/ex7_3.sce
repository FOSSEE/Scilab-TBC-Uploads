// Exa 7.3
clc;
clear;
close;
// Given data
Phi_o = 1*10^21;// in m^-2s^-1
alpha =1*10^5;// in m^-1
e= 1.6*10^-19;// in C
G_L1 = alpha*Phi_o;// in m^-3s^-1
W = 26;// in µm
W = W * 10^-6;// in m
G_L2 = alpha*Phi_o*(%e^((-alpha)*W));// in m^-3s^-1
J_L = e*Phi_o*(1-%e^(-(alpha)*W));// in A/m^2
J_L = J_L * 10^3*10^-4;// in mA/cm^2
disp(J_L,"Photo current density in mA/cm^2 is ");
