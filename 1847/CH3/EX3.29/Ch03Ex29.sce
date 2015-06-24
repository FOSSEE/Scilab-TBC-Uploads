// Scilab Code Ex3.29:: Page-3.48 (2009)
clc; clear;
lambda = 6328e-008;    // Wavelength of He-Laser, cm
a_plus_b = 1/6000;      // Grating element, cm
n = 1;      // First order of diffraction for given wavelength
// As (a+b)*sin(theta1) = n*lambda, solving for theta1
theta1 = asind(n*lambda/a_plus_b);      // Angle at which first order maximum is observed, degrees
n = 2;      // second order of diffraction for given wavelength
theta2 = asind(n*lambda/a_plus_b);      // Angle at which second order maximum is observed, degrees

printf("\nThe angle at which first order maximum is observed = %4.1f degrees", theta1);
printf("\nThe angle at which second order maximum is observed = %4.1f degrees", theta2);

// Result 
// The angle at which first order maximum is observed = 22.3 degrees
// The angle at which second order maximum is observed = 49.4 degrees 
