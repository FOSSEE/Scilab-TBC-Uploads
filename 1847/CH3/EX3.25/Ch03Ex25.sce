// Scilab Code Ex3.25:: Page-3.46 (2009)
clc; clear;
lambda1 = 5500e-008;    // First wavelength, cm
lambda2 = 3700e-008;    // Second wavelength, cm
N = 15000;           // No. of lines per inch of grating, lines/inch
a_plus_b = 2.54/N;         // Grating element, cm
f = 120;        // Focal length of the lens, cm
n = 1;      // Order of diffraction for principal maxima
// As (a+b)*sin(theta_n) = n*lambda, solving for theta1 and theta2
theta1 = asind(n*lambda1/a_plus_b);     // Direction of principal maxima with lambda1, degrees
theta2 = asind(n*lambda2/a_plus_b);     // Direction of principal maxima with lambda2, degrees
// As tand(theta) = x/f, solving for x1 - x2 = dx
dx = f*(tand(theta1)-tand(theta2));     // Linear separation of two lines in first order spectrum, cm

printf("\nThe linear separation of two lines in first order spectrum = %5.2f cm", dx);

// Result 
// The linear separation of two lines in first order spectrum = 14.34 cm 
