// Scilab Code EX3.41:: Page-3.56 (2009)
clc;clear;
lambda1 = 5890e-008;  // Wavelength of sodium D1 line, cm
lambda2 = 5896e-008;  // Wavelength of sodium D2 line, cm
d_lambda = lambda2-lambda1; // Wavelength difference, cm
n = 2;      // Order of diffraction
// As lambda/d_lambda = n*N, solving for N
N = 1/n*(lambda1+lambda2)/(2*d_lambda);    // Minimum required number of lines on the plane transmission grating

printf("\nThe minimum required number of lines on the plane transmission grating = %3d", N);

// Result
// The minimum required number of lines on the plane transmission grating = 491  
