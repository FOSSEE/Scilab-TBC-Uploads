// Scilab Code Ex3d.11: Page-209 (2008)
clc; clear;
lambda = 6000e-008;    // Wavelength of light, cm
n = 2;    // Order of diffraction
d_lambda = 6e-008;    // Difference in wavelengths of D1 and D2 lines, cm
N = lambda/(n*d_lambda);    // Number of lines on grating
printf("\nThe minimum number of lines in the required diffraction grating = %d", N);

// Result
// The minimum number of lines in the required diffraction grating = 500 