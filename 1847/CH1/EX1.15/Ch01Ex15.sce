// Scilab Code Ex1.15: Page-1.18 (2009)
clc; clear;
h = 6.6e-034;     // Planck's constant
m = 9.1e-031;      // Mass of a electron, kg
e = 1.6e-019;       // Electronic charge, C
V = 1;   // For simplicity the accelerating potential is assumed to be unity, V
E = e*V;    // Energy of the electron, J
lambda = h/sqrt(2*m*E); // de-Broglie wavelength of electron, m
printf("\nde-Broglie wavelength of electron accelerated at V volts = %5.2f/sqrt(V) angstrom", lambda/1e-010);

// Result 
// de-Broglie wavelength of electron accelerated at V volts = 12.23/sqrt(V) angstrom 
