// Scilab Code Ex5.10: Page-288 (2008)
clc; clear;
c = 3e+008;    // Speed of light, m/s
KE1 = 3.62e-019;    // Maximum kinetic energy of photoelectrons with first wavelength, eV
lambda1 = 3000;    // First wavelength of incident radiation, angstrom
KE2 = 0.972e-019;    // Maximum kinetic energy of photoelectrons with second wavelength, eV
lambda2 = 5000;    // Second wavelength of incident radiation, angstrom
A = [c/lambda1, -1; c/lambda2, -1];    // Declare a square matrix as per Einstein's Photoelectric relation, KE = h*c/lambda - phi
B = [KE1; KE2];    // Put KEs in a column matrix
X = inv(A)*B;    // Apply inverse multiplication of a matrix to fing h and phi
lambda0 = X(1)*1e-010*c/X(2);    // Threshold wavelength of metal, m
printf("\nh = %4.2e Js\nphi = %1.0e J", X(1)*1e-010, X(2));
printf("\nThe threshold wavelength of metal = %d angstrom", ceil(lambda0/1e-010));

// Result
// h = 6.62e-034 Js
// phi = 3e-019 J
// The threshold wavelength of metal = 6620 angstrom 