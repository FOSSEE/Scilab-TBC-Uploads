// Ex13_2 Page:258 (2014)
clc;clear;
mu_0 = 4*%pi*1e-007;    // Magnetic permeability, T-m/A
e = 1.6e-019;    // Charge on an electron, C
m = 9.1e-031;    // Mass of an electron, kg
Z = 2;    // Atomic number of He
N = 28e+026;    // Number of He atoms per unit volume of the sample, per metre-cube
r_bar = 0.6e-010;    // Mean radius of He atom, m
chi_dia = -mu_0*Z*e^2*N*r_bar^2/(6*m);    // Diamagnetic susceptibility of He
printf("\nThe diamagnetic susceptibility of He = %5.3e", chi_dia);

// Result
// The diamagnetic susceptibility of He = -1.188e-007 