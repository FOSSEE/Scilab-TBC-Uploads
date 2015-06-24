// Scilab Code Ex3c.5: Page-185 (2008)
clc; clear;
D = 80;    // Distance between the source and the slit, cm
lambda = 5890e-008;    // Wavelength of light, cm
bita = 9.424e-002;    // Fringe width, cm
d = lambda*D/bita;    // Separation between the two slits, cm
printf("\nThe distance between the two coherent sources = %4.2f cm", d);

// Result
// The distance between the two coherent sources = 0.05 cm 