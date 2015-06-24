// Scilab code Ex5.9: Pg:218 (2008)
clc;clear;
Lambda = 5000;    // Wavelength of spectral line, Angstorm
theta = 30;    // Direction of principal maxima, degree
d_theta = 0.01;    // Angular separation between two wavelengths, radians
d_Lambda = Lambda*cotd(theta)*d_theta;    // Difference in two wavelengths, angstrom
printf("\nThe difference in two wavelengths = %4.1f angstrom", d_Lambda);

// Result 
// The difference in two wavelengths = 86.6 angstroms