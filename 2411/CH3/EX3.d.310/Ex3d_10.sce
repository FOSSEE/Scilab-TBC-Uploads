// Scilab Code Ex3d.10: Page-209 (2008)
clc; clear;
lambda = 5890e-008;    // Wavelength of light, cm
n = 1;    // Order of diffraction
d_lambda = 6e-008;    // Difference in wavelengths of D1 and D2 lines, cm
N = lambda/(n*d_lambda);    // Number of lines on grating
printf("\nThe minimum number of lines on the diffraction grating = %d", ceil(N));

// Result
// The minimum number of lines on the diffraction grating = 982 