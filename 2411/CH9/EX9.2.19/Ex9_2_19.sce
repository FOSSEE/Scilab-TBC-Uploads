// Scilab Code Ex9.2.19: Page-421(2008)
clc; clear;
d = 1;    // For simplicity assume interplanar spacing to be unity, m
theta = 15;    // Glancing angle for first order, degree
n = 1;    // Order of reflection
// From Bragg's law, 2*d*sind(theta) = n*lambda, solving for lambda
lambda = 2*d*sind(theta)/n;    // Wavelength of incident X-ray, angstrom
// For second order reflection
n = 2
theta = asind(n*lambda/(2*d));    // Glancing angle for second order reflection, degree
printf("\nThe glancing angle for the second order reflection = %4.1f degree", theta);
// For third order reflection
n = 3;
theta = asind(n*lambda/(2*d));    // Glancing angle for third order reflection, degree
printf("\nThe glancing angle for the third order reflection = %4.1f degree", theta);

// Result
// The glancing angle for the second order reflection = 31.2 degree
// The glancing angle for the third order reflection = 50.9 degree 