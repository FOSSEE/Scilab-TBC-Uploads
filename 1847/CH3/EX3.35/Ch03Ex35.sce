// Scilab Code Ex3.35:: Page-3.51 (2009)
clc; clear;
lambda = 5500e-008;     // Mean of two wavelengths, cm
theta = 35;         // Angle of diffraction for maxima in second order
d_theta = 0.15;     // Angular separation between two neighbouring wavelengths, radians
d_lambda = lambda*cotd(theta)*d_theta;  // Distance between two wavelengths seen as separate, cm

printf("\nThe distance between two wavelengths seen as separate = %d angstrom", d_lambda/1e-008);

// Result 
// The distance between two wavelengths seen as separate = 1178 angstrom 
