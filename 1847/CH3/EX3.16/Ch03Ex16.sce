// Scilab Code Ex3.16:: Page-3.27 (2009)
clc; clear;
lambda = 5500e-008;     // Wavelength of light used, cm
x = 3.9e-001;       // Half width of central maximum, cm
f = 220;        // Focal length of the lens, cm
n = 1;      // Order for first order diffraction
// As a*sin(theta) = n*lambda, a*theta = n*lambda
// As theta = lambda/a and theta = x/f, solving for a
a = lambda*f/x;     // Half angular width at central maximum, cm

printf("\nThe width of the slit = %3.1e cm", a);

// Result 
// The width of the slit = 3.1e-002 cm 
