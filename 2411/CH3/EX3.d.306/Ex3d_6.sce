// Scilab Code Ex3d.6: Page-207 (2008)
clc; clear;
n = 2;    // Order of diffraction
lambda = 5e-005;    // Wavelength of light, cm
theta = 30;    // Angle of diffraction, degree
N = sind(theta)/(n*lambda);    // Number of lines per cm of grating, lines/cm
printf("\nThe number of lines per cm of grating = %4d per cm", ceil(N));

// Result
// The number of lines per cm of grating = 5000 per cm 