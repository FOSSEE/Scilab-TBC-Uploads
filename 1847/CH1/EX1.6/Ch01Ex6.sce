// Scilab Code Ex1.6: Page-1.6 (2009)
clc; clear;
m = 1.67e-027;      // Mass of the neutron, kg
k = 1.38e-023;      // Boltzmann constant, J/mol/K
T = 27+273;         // Room temperature, K
h = 6.626e-034;     // Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
v = sqrt(3*k*T/m);      // Velocity of the neutron, m/s
lambda = h/(m*v);  // de Broglie wavelength of the neutron, m
printf("\nThe de Broglie wavelength of the thermal neutrons = %4.2f angstrom", lambda/1e-010);

// Result 
// The de Broglie wavelength of the thermal neutrons = 1.45 angstrom 

