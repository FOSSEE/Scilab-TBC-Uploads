// Scilab Code Ex3d.12: Page-209 (2008)
clc; clear;
lambda = 5890e-008;    // Wavelength of light, cm
n = 2;    // Order of diffraction
d_lambda = 6e-008;    // Difference in wavelengths of D1 and D2 lines, cm
w = 2.5;    // Width of the grating, cm
N = lambda/(n*d_lambda);    // Number of lines on grating
printf("\nThe minimum number of lines per cm in the diffraction grating = %5.1f", N/w);

// Result
// The minimum number of lines per cm in the diffraction grating = 196.3 