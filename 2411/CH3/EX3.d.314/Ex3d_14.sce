// Scilab Code Ex3d.14: Page-209 (2008)
clc; clear;
lambda = 5890e-008;    // Wavelength of light, cm
n = 3;    // Order of diffraction
d_lambda = 6e-008;    // Difference in wavelengths of D1 and D2 lines, cm
N = lambda/(n*d_lambda);    // Maximum number of lines of a grating
printf("\nThe maximum number of lines of the grating = %d", N);

// Result
// The maximum number of lines of the grating = 327 