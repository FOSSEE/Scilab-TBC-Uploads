// Scilab Code Ex1.1:Page-1.5 (2009)
clc; clear;
lambda = 2.1e-010;  // de Broglie wavelength of the particle, m
m = 1.67e-027;      // Mass of the particle, kg
h = 6.626e-034;     // Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
// From de Broglie relation, lambda = h/sqrt(2*m*E), solving for E
E = h^2/(2*m*lambda^2*e);     // Energy of the particle, eV
printf("\nThe energy of the particle from de Broglie wavelength = %5.3e eV", E);

// Result 
// The energy of the particle from de Broglie wavelength = 1.863e-002 eV 
