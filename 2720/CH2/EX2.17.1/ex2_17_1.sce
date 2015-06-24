// Exa 2.17.1
clc;
clear;
close;
format('e',9)
// Given data
Mu_e = 1500;// in cm^2/volt sec
Mu_h = 500;// in cm^2/volt sec
n_i = 1.6 * 10^10;// in per cm^3
e = 1.6 * 10^-19;// in C
Sigma = n_i * (Mu_e + Mu_h) * e;// in mho/cm
disp(Sigma,"The conductivity of pure semiconductor in mho/cm is");
