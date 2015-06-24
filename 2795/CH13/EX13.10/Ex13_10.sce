// Scilab Code Ex13.10: Page-509(2014)
clc; clear;
k = 1.38e-023;    // Boltzmann constant, J/K
e = 1.6e-019;  // Energy equivalent of 1 eV, J
h = 6.62e-034;    // Planck's oconstant, Js
m = 1.67e-027;    // Mass of the neutron, kg
lambda = 0.060e-009;    // Wavelength of the neutron beam, m
p = h/lambda;    // Momentum of the neutron from de-Broglie relation, kg-m/s
K = p^2/(2*m*e);    // Kinetic energy of the neutron needed to study atomic structure, eV
// As K = 3/2*k*T, solving for T
T = 2/3*K*e/k;    // The temperature of the neutron needed to study atomic structure, K
printf("\nThe energy and temperature of the neutron needed to study the atomic structure of solids = %4.2f eV and %4d K respectively", K, T);

// Result
// The energy and temperature of the neutron needed to study the atomic structure of solids = 0.23 eV and 1760 K respectively 