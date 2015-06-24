// Scilab Code Ex3d.1: Page-205 (2008)
clc; clear;
D = 200;    // Distance between the source and the slit, cm
a = 0.02;    // Slit width, cm
x = 0.5;    // Position of first minimum, cm
n = 1;    // Order of diffraction
lambda = a*x/(D*n);    // Wavelength of light used, cm
printf("\nThe wavelength of light used = %4d angstrom", lambda/1e-008);

// Result
// The wavelength of light used = 5000 angstrom 