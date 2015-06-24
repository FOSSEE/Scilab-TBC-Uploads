// Scilab code Ex5.8: Pg:218 (2008)
clc;clear;
Lambda = 5000;    // Wavelength of spectral line, Angstorm
n = 1;    // First order principal maxima 
n = 3;    // Third order principal maxima 
aplusb = 18000;    // Grating element where a is the width of slit and b is the width of opaque region in a grating, cm
n = 1;     // First order diffraction
tl_ratio_1 = 1/sqrt((aplusb/n)^2-Lambda^2);    // Angular dispersion produced by a grating around a mean wavelength lambda, radian per angstorm
n = 3;     // Second order diffraction
tl_ratio_3 = 1/sqrt((aplusb/n)^2-Lambda^2);    // Angular dispersion produced by a grating around a mean wavelength lambda, radian per angstorm
printf("\nThe dispersive powers of first and third order spectra of diffraction grating are %4.2e rad/angstrom and %3.1e rad/angstrom", tl_ratio_1, tl_ratio_3);

// Result 
// The dispersive powers of first and third order spectra of diffraction grating are 5.78e-005 rad/angstrom and 3.0e-004 rad/angstrom