// Scilab Code Ex3.26:: Page-3.47 (2009)
clc; clear;
lambda = 5000e-008;    // Wavelength of light used, cm
N = 5000;           // No. of lines per cm of grating, lines/cm
a_plus_b = 1/N;         // Grating element, cm
n = 1;      // Order of diffraction for first order spectra
// As (a+b)*sin(theta_n) = n*lambda, solving for theta for first and third orders
theta1 = asind(n*lambda/a_plus_b);     // Direction of principal maxima with lambda1, degrees
n = 3;      // Order of diffraction for third order spectra
theta3 = asind(n*lambda/a_plus_b);     // Direction of principal maxima with lambda2, degrees
delta_theta = theta3 - theta1;  // Angular separation in the first and third order spectra, 

printf("\nThe difference in the deviation in the first and third order spectra = %4.1f degrees", delta_theta);

// Result 
// The difference in the deviation in the first and third order spectra = 34.1 degrees 
