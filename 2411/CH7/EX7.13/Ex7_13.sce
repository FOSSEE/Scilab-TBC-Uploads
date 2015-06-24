// Scilab Code Ex7.13: Page-381 (2008)
clc; clear;
n = 1;    // Order of diffraction
lambda = 1.75e-010;    // Wavelength of X rays, m
h = 1, k = 1, l = 1;    // Miller indices for the set of planes
theta = 30;    // Bragg's angle, degree
// As from Bragg's law, 2*d*sind(theta) = n*lambda and d = a/sqrt(h^2+k^2+l^2). solving for a we have
a = sqrt(h^2+k^2+l^2)*n*lambda/(2*sind(theta)*1e-010);    // Interatomic spacing of the crystal, angstrom
printf("\nThe interatomic spacing of the crystal = %5.3f angstrom", a);

// Result
// The interatomic spacing of the crystal = 3.031 angstrom 