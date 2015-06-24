// Exa 4.4
format('v',6)
clc;
clear;
close;
// Given data
V_T = 26;// in mV
V_T=V_T*10^-3;// in V
n_i = 2.5 * 10^13;
Sigma_p = 1;
Sigma_n = 1;
Mu_n = 3800;
q = 1.6 * 10^-19;// in C
Mu_p = 1800;
N_A = Sigma_p/(2* q * Mu_p);// in /cm^3
N_D = Sigma_n /(q * Mu_n);// in /cm^3
// The height of the energy barrier for Ge,
V_J = V_T * log((N_A * N_D)/(n_i)^2);// in V
disp(V_J,"For Ge the height of the energy barrier in V is");
// For Si p-n juction
n_i = 1.5 * 10^10;
Mu_n = 1300;
Mu_p = 500;
N_A = Sigma_p/(2* q * Mu_p);// in /cm^3
N_D = Sigma_n /(q * Mu_n);// in /cm^3
// The height of the energy barrier for Si p-n junction,
V_J = V_T * log((N_A * N_D)/(n_i)^2);// in V
disp(V_J,"For Si p-n junction  the height of the energy barrier in V is");
