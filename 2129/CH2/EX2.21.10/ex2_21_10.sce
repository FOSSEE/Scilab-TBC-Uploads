// Exa 2.21.10
clc;
clear;
close;
// Given data
Rho = 9.6 * 10^-2;// in ohm-m
Sigma_n = 1/Rho;// in (ohm-m)^-1
q = 1.6 * 10^-19;// in C
Mu_n = 1300 * 10^-4;// in m^2/v-s
N_D = Sigma_n / (Mu_n * q);// in atoms/m^3
A_D = N_D;// Atom density in atoms/cm^3
A_D = A_D * 10^6;// atoms/m^3
R_si = N_D/A_D;// ratio
disp(R_si,"the ratio of donor atom to silicon atom is");

// Note: In the book the wrong value of N_D (5*10^22) is putted to evaluate the value of Atom Density (A_D) whereas the value of N_D is calculated as 5*10^20.
//          So the answer in the book is wrong
