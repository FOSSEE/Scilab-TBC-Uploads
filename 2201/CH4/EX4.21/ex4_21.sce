// Exa 4.21
clc;
clear;
close;
// Given data
q = 1.6 * 10^-19;// in C
Mu_p = 500;// in cm^2/V-sec
Rho_p = 3.5;// in ohm-cm
Mu_n = 1500;// in cm^2/V-sec
Rho_n = 10;// in ohm-cm
N_A = 1/(Rho_p * Mu_p * q);// in /cm^3
N_D = 1/(Rho_n * Mu_n * q);// in /cm^3
V_J = 0.56;// in V
n_i = 1.5 * 10^10;// in /cm^3
V_T = V_J/log((N_A * N_D)/(n_i)^2);// in V
// V_T = T/11600
T = V_T * 11600;// in K
T = T - 273;// in °C
disp(T,"The Temperature of junction in °C is");
