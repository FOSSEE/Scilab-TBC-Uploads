// Scilab Code Ex1.9: Page-1.7 (2009)
clc; clear;
m = 1.67e-027;      // Mass of the neutron, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
h = 6.626e-034;     // Planck's constant, Js
E = 1*e;     // Energy of the electron, J
lambda = h/sqrt(2*m*E);  // de Broglie wavelength of the neutron, m
printf("\nThe de Broglie wavelength of the neutron = %4.2f angstrom", lambda/1e-010);

// Result 
// The de Broglie wavelength of the neutron = 0.29 angstrom 

