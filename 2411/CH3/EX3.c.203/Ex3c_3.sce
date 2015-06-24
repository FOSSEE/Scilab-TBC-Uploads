// Scilab Code Ex3c.3: Page-184 (2008)
clc; clear;
d = 0.1;    // Separation between the two slits, cm
D = 100;    // Distance between the source and the slit, cm
bita = 0.05;    // Fringe width, cm
lambda = bita*d/D;    // Wavelength of light, cm
printf("\nThe wavelength of light used = %4d angstrom", lambda/1e-008);

// Result
// The wavelength of light used = 5000 angstrom 
