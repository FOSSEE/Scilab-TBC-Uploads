// Scilab Code Ex5.21: Page:307 (2011)
clc;clear;
lambda1 = 5890;....// Wavelength of the line, angstrom
lambda2 = 5896;....// Wavelength of the line, angstrom
d_lambda = lambda2 - lambda1;....// Wavelength difference, angstrom
n = 2;....// Order of diffraction
N = lambda2/(n*d_lambda);    // Minimum no. of lines in a grating
printf("\nThe minimum number of lines in the grating = %3d lines", N);

// Result
// The minimum number of lines in the grating = 491 lines 
