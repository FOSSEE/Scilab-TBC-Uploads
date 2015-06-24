// Exa 2.11
format('v',9)
clc;
clear;
close;
// Given data
Rho = 10;// in Ω-cm
Mu_d = 500;// in cm^2/v.s.
e = 1.6*10^-19;// electron charge in C
// The number of donor atom
n_d = 1/(Rho * e * Mu_d);// in per cm^3
disp(n_d,"The number of donor atom per cm^3 is ");
