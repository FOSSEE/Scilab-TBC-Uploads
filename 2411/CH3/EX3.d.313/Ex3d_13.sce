// Scilab Code Ex3d.13: Page-210 (2008)
clc; clear;
lambda = 5000e-008;    // Wavelength of light, cm
theta = 90;    // Angle of diffraction for the maximum resolving power, degree
N = 40000;    // Number of lines on grating
a_plus_b = 12.5e-005;    // Grating element, cm
n = 2;    // Order of diffraction
n_max = N*a_plus_b*sind(theta)/lambda;    // Maximum resolving power
printf("\nThe maximum resolving power = %d", n_max);

// Result
// The maximum resolving power = 100000 