// Ex13_5 Page:260 (2014)
clc;clear;
mu_0 = 4*3.14*1e-007;    // Magnetic permeability, H/m
mu = 9.27e-024;    // Bohr magneton, A-Sq.m
k = 1.38e-023;    // Boltzmann constant, J/K
T = 300;    // Absolute temperature of the specimen, K
H = 2e+005;    // Magnetic field to which paramagnetic salt is subjected, A/m
rho = 4370;    // Density of paramagnetic salt, kg/metre-cube
N_A = 6.021e+026;    // Avogadro's number, per k-mol
M = 168.5;    // Molecular weight of paramagnetic salt, kg/k-mol
N = rho*N_A/M;    // Number of atoms per unit volume of the salt, per metre-cube
chi_para = mu_0*N*(2*mu)^2/(3*k*T);    // Susceptibility of paramagnetic salt
M = chi_para*H;    // Magnetization produced in paramagnetic salt, A/m
printf("\nThe susceptibility of paramagnetic salt = %5.3e", chi_para);
printf("\nThe magnetization produced in paramagnetic salt = %6.2f A/m", M);

// Result
// The susceptibility of paramagnetic salt = 5.428e-004
// The magnetization produced in paramagnetic salt = 108.56 A/m 