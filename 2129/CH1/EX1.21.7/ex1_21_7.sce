// Exa 1.21.7
clc;
clear;
close;
// Given data
D = 4.2 * 10^28;//density of Ge atoms in atoms/m^3
N_d = D / 10^6;// in atoms/m^3
e = 1.6 * 10^-19;// in C
Mu_e = 0.36;// in m^2/vs
Sigma_n = N_d *  e * Mu_e;// in mho/m
Rho_n = 1/Sigma_n;// in ohm m
disp(Rho_n,"The resistivity of drop Ge in ohm m is ");
