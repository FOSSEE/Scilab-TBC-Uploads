// Ex19_6 Page:379 (2014)
clc;clear;
e = 1.6e-019;    // Charge on an electron, C
k = 1.38e-023;    // Boltzmann constant, J/K
K = 8.99e+009;    // Coulomb's constant, N-Sq.m/Sq.C
r_d = 1.5e-015;    // Radius of deutrium nucleus, m
r_t = 1.7e-015;    // Radius of tritium nucleus, m
KE = K*e^2/(r_d + r_t)/2;    // Kinetic energy for one particle, MeV
T = 2*KE/(3*k);    // Temperature required for the deutrium-tritium fusion to occur, K
printf("\nThe temperature required for the deutrium-tritium fusion to occur = %1.0e K", T);

// Result
// The temperature required for the deutrium-tritium fusion to occur = 2e+009 K 