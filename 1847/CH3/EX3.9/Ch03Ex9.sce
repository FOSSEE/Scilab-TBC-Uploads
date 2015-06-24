// Scilab Code Ex3.9:: Page-3.24 (2009)
clc; clear;
lambda = 6600e-008;     // Wavelength of light used, cm
a = 0.018;    // Width of the slit, cm
f = 200;        // Focal length of the lens, cm
n = 1;      // Order for first order diffraction
// As a*sin(theta) = n*lambda, a*theta = n*lambda
// As theta = lambda/a and theta = x/f, solving for x
x = lambda*f/a;     // Half angular width at central maximum, cm

printf("\nThe width of central maximum = %3.1f cm", 2*x);

// Result 
// The width of central maximum = 1.5 cm 
