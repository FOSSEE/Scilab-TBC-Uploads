// Scilab Code Ex1.21: Page-1.20 (2009)
clc; clear;
V = 50; // Potential difference, V
m = 9.1e-031;     // Mass of the electron, kg
e = 1.6e-019;     // Electronic charge, C
h = 6.6e-034;    // Planck's constant, Js
lambda = h/sqrt(2*m*e*V);    // From de-Broglie relation,
printf("\nde-Broglie wavelength of the electron = %4.2f angstrom", lambda/1e-010);

// Result 
// de-Broglie wavelength of the electron = 1.73 angstrom
