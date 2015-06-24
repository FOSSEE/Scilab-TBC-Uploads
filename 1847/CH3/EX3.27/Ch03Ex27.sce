// Scilab Code Ex3.27:: Page-3.48 (2009)
clc; clear;
lambda = 6500e-008;    // Wavelength of light used, cm
N = 10000;           // No. of lines per cm of grating, lines/cm
a_plus_b = 1/N;         // Grating element, cm
theta_n = 90;   // Direction for maximum possible orders, degrees
// As (a+b)*sin(theta_n) = n*lambda, solving for theta for n
n = a_plus_b*sind(theta_n)/lambda;  // Order of diffraction for 

printf("\nThe order of diffraction for the given grating element and wavelength of light = %d", n);

// Result 
// The order of diffraction for the given grating element and wavelength of light = 1 
