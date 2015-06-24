// Scilab Code Ex3c.7: Page-185 (2008)
clc; clear;
D = 1.2;    // Distance between the source and the slit, m
d = 7.5e-004;   // Separation between the two slits, cm
n = 20;    // Number of fringes crossed in the field of view
bita = 1.888e-002/n;    // Fringe width, cm
lambda = bita*d/D;    // Wavelength of light, cm
printf("\nThe wavelength of the light used in biprism experiment = %4d angstrom", lambda/1e-010);

// Result
// The wavelength of the light used in biprism experiment = 5900 angstrom 