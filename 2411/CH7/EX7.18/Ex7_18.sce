// Scilab Code Ex7.18: Page-384 (2008)
clc; clear;
lambda = 1.8e-010;    // Wavelength of the X rays, m
n = 1;    // Order of diffraction
theta = 60;    // Angle of diffraction for the first order, degree
d = n*lambda/(2*sind(theta));    // Interplanar spacing, m
// Since for a simple cubic lattice, d_111 = d = a/sqrt(3), solving for a
a = sqrt(3)*d;    // The interatomic spacing for the given crystal planes, m
printf("\nThe interatomic spacing for the given crystal planes, a = %3.1f angstrom", a/1e-010);

// Result
// The interatomic spacing for the given crystal planes, a = 1.8 angstrom 