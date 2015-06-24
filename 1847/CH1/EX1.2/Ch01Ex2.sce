// Scilab Code Ex1.2: Page-1.5 (2009)
clc; clear;
m = 1.67e-027;      // Mass of the particle, kg
h = 6.626e-034;     // Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
E = 1e+011*e;     // Energy of the particle, J
lambda = h/sqrt(2*m*E);     // de Broglie wavelength of the particle, m
printf("\nThe de Broglie wavelength of the particle = %4.2e m", lambda);

// Result 
// The de Broglie wavelength of the particle = 9.06e-017 m 
