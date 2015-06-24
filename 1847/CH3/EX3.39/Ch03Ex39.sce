// Scilab Code EX3.39:: Page-3.55 (2009)
clc;clear;
lambda1 = 5890e-008;  // Wavelength of sodium D1 line, cm
lambda2 = 5896e-008;  // Wavelength of sodium D2 line, cm
d_lambda = lambda2-lambda1; // Difference in the wavelength of two lines, cm
n = 2;  // Order of diffraction
// As lambda/d_lambda = n*N, solving for N
N = lambda1/(d_lambda*n);  // Minimum number of lines in a grating
printf("\nThe minimum number of lines in a grating = %3d lines", N);

// Result
// The minimum number of lines in a grating = 490 lines 
