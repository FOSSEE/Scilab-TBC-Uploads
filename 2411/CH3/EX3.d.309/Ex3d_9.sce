// Scilab Code Ex3d.9: Page-208 (2008)
clc; clear;
theta = 30;    // Maximum angle of diffraction, degree
lambda1 = 5400e-010;    // Wavelength of light giving certain diffraction order, m
lambda2 = 4050e-010;    // Wavelength of light giving higher diffraction order, m
n = poly(0, 'n');
n = roots(lambda1*n-(n+1)*lambda2);    // Order of diffraction for first wavelength
a_plus_b = n*lambda1/sind(theta);    // Grating element, m
N = 1/a_plus_b;    // Number of lines per cm ruled on grating, lines/cm
printf("\nThe number of lines per cm on the diffraction grating = %d lines per cm", N/100);

// Result
// The number of lines per cm on the diffraction grating = 3086 lines per cm 