// Exa 2.17.2
clc;
clear;
close;
// Given data
Rho = 10;// in Ω-cm
Mu_d = 500;// in cm^2/v.s.
e = 1.6*10^-19;
n_d = 1/(Rho * e * Mu_d);// in per cm^3
disp(n_d,"The number of donor atom must be added to achieve in per cm^3 is ");
