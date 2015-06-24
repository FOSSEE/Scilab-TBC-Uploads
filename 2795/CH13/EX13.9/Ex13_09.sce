// Scilab Code Ex13.9: Page-502(2014)
clc; clear;
k = 1.38e-023;    // Boltzmann constant, J/K
r = 3e-015;    // Distance at whcih the nuclear force becomes effective, m
e = 1.6e-019;  // Charge on an electron, C
K = 9e+009;    // Coulomb's constant, N-Sq.m/C^2
V = K*e^2/r;    // Coulomb potential energy, J
// As V = 3/2*k*T, solving for T
T = 2/3*V/k;    // The ignition temperature needed for the fusion reaction between deuterium and a tritium, K
printf("\nThe ignition temperature needed for the fusion reaction between a deuterium and a tritium = %3.1e K", T);

// Result
// The ignition temperature needed for the fusion reaction between a deuterium and a tritium = 3.7e+009 K 