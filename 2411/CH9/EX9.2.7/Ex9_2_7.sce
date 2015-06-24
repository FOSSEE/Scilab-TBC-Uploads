// Scilab Code Ex9.2.7: Page-416 (2008)
clc; clear;
h = 6.63e-034;    // Planck's constant, Js
m = 9.11e-031;    // Rest mass of an electron, kg
c = 3e+008;    // Speed of light in vacuum, m/s
bita = 3/5;    // Boost parameter
v = 3/5*c;    // Spped of the electron, m/s
lambda = h/(m*v)*sqrt(1-bita^2);    // de Broglie wavelength of the electron, m
printf("\nThe de-Broglie wavelength of the moving electron = %6.4f angstrom", lambda/1e-010);

// Result 
// The de-Broglie wavelength of the moving electron = 0.0323 angstrom 