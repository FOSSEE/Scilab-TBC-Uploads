// Scilab code Ex5.14: Pg:225 (2008)
clc;clear;
n = 1;    // First order diffraction
N = 1000;    // Number of lines on the grating
Lambda = 6e-05;    // Wavelength of light, cm
// Let Lambda and d_Lambda be the two wavelengths in the first order spectrum. Since the resolving power of a grating is given by Lambda/d_Lambda = n*N. On solving for d_lambda, we have
d_Lambda = Lambda/(n*N);    // Difference between two wavelength in the first order spectrum, Angstorm
printf("\nThe wavelength difference in the first order spectrum = %d angstrom", d_Lambda/1e-008);

// Result 
// The wavelength difference in the first order spectrum = 6 angstrom