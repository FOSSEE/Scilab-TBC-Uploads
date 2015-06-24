// Scilab Code EX3.43:: Page-3.57 (2009)
clc;clear;
lambda1 = 5890e-008;  // Wavelength of sodium D1 line, cm
lambda2 = 5896e-008;  // Wavelength of sodium D2 line, cm
d_lambda = lambda2-lambda1; // Wavelength difference, cm
n = 3;      // Order of diffraction
P = 2500;   // Number of lines per unit length of grating
// As lambda/d_lambda = n*N, solving for N
N = 1/n*(lambda1+lambda2)/(2*d_lambda);    // Total lines on the grating 
w = N/P;    // Minimum width of the grating, cm
printf("\nThe minimum width of the grating to resolve the sodium lines in third order = %5.3f cm", w);

// Result
// The minimum width of the grating to resolve the sodium lines in third order = 0.131 cm 
