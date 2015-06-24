// Scilab Code EX3.42:: Page-3.57 (2009)
clc;clear;
lambda1 = 5890e-008;  // Wavelength of sodium D1 line, cm
lambda2 = 5896e-008;  // Wavelength of sodium D2 line, cm
d_lambda = lambda2-lambda1; // Wavelength difference, cm
w = 2.5;    // Width of the grating, cm
n = 2;      // Order of diffraction
// As lambda/d_lambda = n*N, solving for N
N = 1/n*(lambda1+lambda2)/(2*d_lambda);    // Minimum required number of lines on the plane transmission grating

printf("\nThe number of lines on the plane transmission grating to just resolve the sodium lines = %3d", N/w);

// Result
// The number of lines on the plane transmission grating to just resolve the sodium lines = 196 
