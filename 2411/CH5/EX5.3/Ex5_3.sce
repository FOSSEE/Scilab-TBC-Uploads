// Scilab Code Ex5.3: Page-284 (2008)
clc; clear;
b = 2.898e-003;    // Wein's constant, m-K
T = 3000 + 273;    // Temperature of the source, K
lambda_m = b/T;    // Wavelength of maximum intensity of radiation emitted from the source, m
printf("\nThe wavelength of maximum intensity of radiation emitted from the source = %d angstrom", lambda_m/1e-010);

// Result
// The wavelength of maximum intensity of radiation emitted from the source = 8854 angstrom 