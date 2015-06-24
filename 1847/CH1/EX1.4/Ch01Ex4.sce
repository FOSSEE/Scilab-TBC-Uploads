// Scilab Code Ex1.4:  Page-1.6 (2009)
clc; clear;
lambda = 5.2e-03;  // de Broglie wavelength of the electron, m
m = 9.1e-031;      // Mass of the electron, kg
h = 6.626e-034;     // Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
// From de Broglie relation, lambda = h/sqrt(2*m*E), solving for E
E = h^2/(2*m*lambda^2*e);     // Energy of the electron, eV
printf("\nThe energy of the electron from de Broglie wavelength = %5.3e eV", E);

// Result 
// The energy of the electron from de Broglie wavelength = 5.576e-014 eV 

