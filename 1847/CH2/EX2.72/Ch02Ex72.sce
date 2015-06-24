// Scilab Code Ex2.72:: Page-2.58(2009)
clc; clear;
lambda1 = 5890e-008;    // Wavelength corresponding to the D1 line, cm
lambda2 = 5896e-008;    // Wavelength corresponding to the D2 line, cm
delta_lambda = lambda2 - lambda1;   // Difference in the wavelengths, cm
// As delta_lambda = lambda1*lambda2/(2*x), solving for x
x = lambda1*lambda2/(2*(lambda2-lambda1));  // Distance between two successive positions of movable mirror

printf("\nThe distance between two successive positions of movable mirror = %3.1e cm", x);

// Result
// The distance between two successive positions of movable mirror = 2.9e-002  
