// Scilab Code Ex3.24: : Page-3.46 (2009)
clc; clear;
lambda1 = 5890e-008;    // Wavelength of D1 line, cm
lambda2 = 5896e-008;    // Wavelength of D2 line, cm
N = 15000;           // No. of lines per inch of grating, lines/inch
a_plus_b = 2.54/N;         // Grating element, cm
n = 2;      // Order of diffraction for secondary maxima
// As (a+b)*sin(theta_n) = n*lambda, solving for theta1 and theta2
theta1 = asind(n*lambda1/a_plus_b);     // Direction of secondary maxima with lambda1, degrees
theta2 = asind(n*lambda2/a_plus_b);     // Direction of secondary maxima with lambda2, degrees

printf("\nThe angle of separation in second order diffraction spectrum = %3.1f degrees", theta2-theta1);

// Result 
// The angle of separation in second order diffraction spectrum = 0.1 degrees 
