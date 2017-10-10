// Ex10_9  Page:220 (2014)
clc;clear;
d = 2.51e-010;    // Spacing between adjacent planes, m
theta = 9;    // Glancing angle for diffraction, degree
n = 1;    // Order of diffraction
lambda = 2*d*sind(theta)/n;    // Wavelength of X-ray from Bragg's Law, m
n = 2;    // New order of diffraction
theta = asind(2*lambda/(2*d));    // Glancing angle for second order diffraction, degree
printf("\nThe wavelength of X-rays = %6.4f angstrom", lambda/1e-010);
printf("\nThe glancing angle for second order diffraction = %2d degree", theta);

// Result
// The wavelength of X-rays = 0.7853 angstrom
// The glancing angle for second order diffraction = 18 degree 