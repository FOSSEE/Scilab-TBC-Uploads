// Scilab Code Ex7.14: Page-382 (2008)
clc; clear;
e = 1.6e-019;    // The energy equivalent of 1 eV, J
c = 3e+008;    // Speed of light in vacuum, m/s
n = 1;    // Order of diffraction
d = 2.82e-010;    // Interplanar spacing, m
V = 9.1e+003;    // Operating voltage of X rays
theta = 14;    // Bragg's angle, degree
lambda = 2*d*sind(theta)/n;    // Wavelength of X rays, m
nu = c/lambda;    // Frequency of X rays, Hz
h = e*V/nu;    // Planck's constant, Js
printf("\nThe value of Planck constant, h = %4.2e Js", h);

// Result
// The value of Planck constant, h = 6.62e-034 Js 