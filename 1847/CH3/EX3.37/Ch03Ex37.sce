// Scilab Code Ex3.37:: Page-3.52 (2009)
clc; clear;
lambda = 6500e-008;     // Wavelength of light used, cm
theta = 19.5;   // Angle of diffraction for maxima in first order, degrees
l = 3.5;    // Length of the grating, cm
n = 1;      // Order of diffraction
// But a_plus_b*sind(theta)=n*lambda, solving for a_plus_b
a_plus_b = n*lambda/sind(theta);       // Grating element, cm
N = 1/a_plus_b;     // No. of lines per cm on grating surface, lines/cm
N_total = l*N;      // Total number of lines on grating surface

printf("\nThe total number of lines on grating surface = %5d", N_total);

// Result 
// The total number of lines on grating surface = 17974 
