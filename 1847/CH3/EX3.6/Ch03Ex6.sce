// Scilab Code Ex3.6:: Page-3.23 (2009)
clc; clear;
lambda = 5000e-010;     // Wavelength of light used, cm
n = 1;      // Order of diffraction
x = 5e-003;     // Position of first minima on either sides of central maximum, m
D = 2.5;    // Distance of screen from the narrow slir, m
sin_theta = x/sqrt(x^2+D^2);    // Sine of angle theta, rad
// For a single slit Fraunhofer diffraction, a*sin(theta) = n*lambda, solving for a
a = n*lambda/sin_theta;     // Width of the slit, m

printf("\nThe Width of the slit = %3.1e m", a);

// Result 
// The Width of the slit = 2.5e-004 m 
