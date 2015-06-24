// Exa 3.21.5
clc;
clear;
close;
format('e',9)
// Given data
Mu_n = 0.15;// in m^2/v-s
K = 1.38 * 10^-23; // in J/K
T = 300;// in K
del_n = 10^20;// in per m^3
Toh_n = 10^-7;// in s
e = 1.6 * 10^-19;// in C
D_n = Mu_n * ((K * T)/e);// in m^2/s
disp(D_n,"The diffusion coefficient in m^2/s is");
L_n = sqrt(D_n * Toh_n);// in m 
disp(L_n,"The Diffusion length in m is");
J_n = (e * D_n * del_n)/L_n;// in A/m^2
disp(J_n,"The diffusion current density in A/m^2 is"); 
// Note : The value of diffusion coefficient in the book is wrong.


