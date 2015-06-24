// Exa 3.5
clc;
clear;
close;
// Given data
Miu_n = 0.15;// in m^2/v-s
K = 1.38*10^-23;
T = 300;// in K
e = 1.6*10^-19;// in C
D_n = Miu_n*((K*T)/e);// in m^2/s
Torque_n = 10^-7;// in s
L_n = sqrt(D_n*Torque_n);// in m
disp(L_n,"The diffusion length in m is");
del_n = 10^20;// in electrons/m^3
J_n = (e*D_n*del_n)/L_n;// in A/m^2
disp(J_n,"The diffusion current density in A/m^2 is");
