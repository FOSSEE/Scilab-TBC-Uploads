// Scilab Code Ex3.7:: Page-3.23 (2009)
clc; clear;
lambda = 6000e-010;     // Wavelength of light used, m
a = 15e-007;    // Width of the slit, m
// For a single slit Fraunhofer diffraction, a*sind(theta) = n*lambda, solving for theta
theta = asind(lambda/a); // Half angular width of central maximum, degrees

printf("\nThe angular width of central maximum = %2d degrees", 2*ceil(theta));

// Result 
// The angular width of central maximum = 48 degrees 
