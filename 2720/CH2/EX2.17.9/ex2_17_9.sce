//Exa 2.17.9
clc;
clear;
close;
format('e',9)
// Given data
e = 1.6 * 10^-19;// in C
Mu_h = 500;// in cm^2/V.s.
Mu_e = 1500;// in cm^2/V.s.
n_i = 1.6 * 10^10;// in per cm^3
Sigma_i = n_i * e * ( Mu_h + Mu_e);// in mho/cm
disp(Sigma_i,"Conductivity of pure silicon at room temperature in mho/cm is");
