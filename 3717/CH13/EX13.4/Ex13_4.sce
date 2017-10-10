// Ex13_4 Page:260 (2014)
clc;clear;
mu_0 = 4*%pi*1e-007;    // Magnetic permeability, H/m
N = 6.5e+025;    // Number of atoms per unit volume of the salt, per metre-cube
mu = 9.27e-024;    // Bohr magneton, A-Sq.m
k = 1.38e-023;    // Boltzmann constant, J/K
T = 300;    // Absolute temperature of the specimen, K
chi_para = mu_0*N*mu^2/(3*k*T);    // Susceptibility of paramagnetic salt
printf("\nThe susceptibility of paramagnetic salt = %4.2e", chi_para);

// Result
// The susceptibility of paramagnetic salt = 5.65e-007 