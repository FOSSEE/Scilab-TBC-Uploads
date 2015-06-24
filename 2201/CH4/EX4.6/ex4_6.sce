// Exa 4.6
clc;
clear;
close;
// Given data
Rho_p = 2;// in ohm-cm
Rho_n = 1;// in ohm cm
q = 1.6*10^-19;// in C
n_i = 2.5*10^13;// atoms per cm^3
Miu_p = 1800;
Miu_n = 3800;
N_A = 1/(Rho_p*q*Miu_p);// in /cm^3
N_D = 1/(Rho_n*q*Miu_n);// in /cm^3
V_T = 26;//in mV
V_T= V_T*10^-3;// in V
V_J = V_T*log((N_A*N_D)/((n_i)^2));//in V
disp(V_J,"The height of the potential energy barrier in V is");
Miu_p = 500;
N_A = 1/(Rho_p*q*Miu_p);// in /cm^3
Miu_n = 1300;
N_D = 1/(Rho_n*q*Miu_n);// in /cm^3
n_i = 1.5*10^10;
V_J = V_T*log((N_A*N_D)/((n_i)^2));//in V
disp("For silicon P-N juction")
disp(V_J,"The height of the potential energy barrier in V is");
