// Exa 2.16
format('v',9)
clc;
clear;
close;
// Given data
D = 4.2 * 10^28;//density of Ge atoms per m^3
N_d = D / 10^6;// per m^3
e = 1.6 * 10^-19;// in C
Mu_e = 0.36;// in m^2/V-sec
// Donor concentration is very large as compared to intrinsic carrier concentration
Sigma_n = N_d *  e * Mu_e;// in mho/m (intrinsic concentration can be neglected)
Rho_n = 1/Sigma_n;// in ohm m
disp(Rho_n,"The resistivity of drop Ge in ohm m is ");
