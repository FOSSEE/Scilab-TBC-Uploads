// Scilab Code Ex1.18:  Page-1.19 (2009)
clc; clear;
m = 9.1e-031;     // Mass of the electron, kg
Ek = 1.27e-017;     // Kinetic energy of electron, J
h = 6.6e-034;     // Planck's constant
lambda = h/sqrt(2*m*Ek); // de-Broglie wavelength of electron, m
printf("\nThe wavelength associated with moving electron = %4.2f angstrom", lambda/1e-010);

// Result 
// The wavelength associated with moving electron = 1.37 angstrom 
