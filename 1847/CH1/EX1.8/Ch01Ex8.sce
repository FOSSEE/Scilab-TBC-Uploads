// Scilab Code Ex1.8:  Page-1.7 (2009)
clc; clear;
m = 9.1e-031;      // Mass of the electron, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
h = 6.626e-034;     // Planck's constant, Js
E = 5*e;     // Energy of the electron, J
// As 1/2*m*v^2 = E, solving for v
v = sqrt(2*E/m);        // Velocity of the electron, m/s
lambda = h/(m*v);  // de Broglie wavelength of the electron, m
printf("\nThe de Broglie wavelength of the electron = %3.1f angstrom", lambda/1e-010);

// Result 
// The de Broglie wavelength of the electron = 5.5 angstrom

