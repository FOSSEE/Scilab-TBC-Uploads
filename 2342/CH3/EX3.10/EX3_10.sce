// Exa 3.10
format('v',8)
clc;
clear;
close;
// Given data
Rho = 9.6 * 10^-2;// in ohm-m
Sigma_n = 1/Rho;// in (ohm-m)^-1
q = 1.6 * 10^-19;// in C
Mu_n = 1300 * 10^-4;// in m^2/V-sec
N_D = Sigma_n / (Mu_n * q);// in atoms/m^3
A_D = 5*10^22;// Atom density in atoms/cm^3
A_D = A_D * 10^6;// atoms/m^3
R_si = N_D/A_D;// ratio
disp(R_si,"The ratio of donor atom to silicon atom is");

