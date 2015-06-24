// Scilab Code Ex3d.8: Page-208 (2008)
clc; clear;
lambda = 5.5e-007;    // Wavelength of light, m
a_plus_b = 1.5e-006;    // Grating element, m
theta = 90;    // Maximum angle of diffraction, degree
n = a_plus_b*sind(theta)/lambda;    // Order of diffraction
printf("\nIn this diffraction grating only %dnd order will be visible while %drd and higher orders are not possible.", n, n+1);

// Result
// In this diffraction grating only 2nd order will be visible while 3rd and higher orders are not possible. 