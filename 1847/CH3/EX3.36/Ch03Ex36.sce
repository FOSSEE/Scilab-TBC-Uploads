// Scilab Code Ex3.36:: Page-3.51 (2009)
clc; clear;
lambda1 = 5500e-008;     // First wavelength of light, cm
lambda2 = 4500e-008;     // Second wavelength of light, cm
theta = 45;     // Angle of diffraction for lower order, degrees
n = lambda2/(lambda1-lambda2);  // Lower order of diffraction
// But a_plus_b*sind(theta)=n*lambda, solving for a_plus_b
a_plus_b = floor(n)*lambda1/sind(theta);       // Grating element, cm
N = 1/a_plus_b;     // No. of lines per cm on grating surface, lines/cm

printf("\nThe number of lines per cm on grating surface = %4d lines/cm", ceil(N));

// Result 
// The number of lines per cm on grating surface = 3215 lines/cm 
