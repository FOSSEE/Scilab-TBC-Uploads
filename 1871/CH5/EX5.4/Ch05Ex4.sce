// Scilab code Ex5.4: : Pg:216 (2008)
clc;clear;
aplusb = 1/1250;    // Grating element where a is the width of slit and b is the width of opaque region in a grating, cm
theta = 30;    // Direction of principal maxima, degree
n = 2;    // Second order principal maxima
Lambda = aplusb*sind(theta)/n;    // Wavelength of spectral line, angstrom
printf("\nThe wavelength of spectral line = %d angstrom", ceil(Lambda/1e-008));

// Result 
// The wavelength of spectral line = 20000 angstrom 