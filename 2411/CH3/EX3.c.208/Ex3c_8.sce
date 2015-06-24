// Scilab Code Ex3c.8: Page-186 (2008)
clc; clear;
lambda1 = 5893;    // First wavelength of light, angstrom
lambda2 = 4358;    // Second wavelength of light, angstrom
n = 40;    // Number of fringes obtained with first wavelength
// As bita1/bita2 = lambda1/lambda2, so
x = n*lambda1/lambda2;    // Number of fringes obtained with the seocond wavelength
printf("\nThe number of fringes obtained with the given wavelength = %d", x);

// Result
// The number of fringes obtained with the given wavelength = 54 