// Scilab Code Ex3d.7: Page-208 (2008)
clc; clear;
N = 5000;    // Number of lines per cm ruled on grating, lines/cm
lambda = 6e-005;    // Wavelength of light, m
a_plus_b = 1/N;    // Grating element, m
theta = 90;    // Maximum angle of diffraction, degree
n = a_plus_b*sind(theta)/lambda;    // Order of diffraction
printf("\nIn highest order spectrum obtainable with the given diffraction grating = %4.2f", n);

// Result
// In highest order spectrum obtainable with the given diffraction grating = 3.33 