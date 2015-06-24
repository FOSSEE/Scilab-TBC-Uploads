// Scilab Code Ex3.28:: Page-3.48 (2009)
clc; clear;
lambda1 = 6500e-008;    // Wavelength of first line, cm
lambda2 = 4500e-008;    // Wavelength of scecond line, cm
theta1 = 18;        // Direction of lower order, degrees
theta2 = 18;        // Direction of higher order, degrees
// As (a+b)*sin(theta1) = n*lambda1 and (a+b)*sin(theta2) = (n+1)*lambda2, solving for n
n = lambda2/(lambda1 - lambda2);    // Order of diffraction for first wavelength
// As a_plus_b = n*lambda1/sind(theta1), solving for a_plus_b
a_plus_b = ceil(n)*lambda1/sind(theta1);  // Grating element, cm
N = 1/a_plus_b;     // No. of lines on the grating surface, lines/cm

printf("\nThe number of lines ruled on the grating surface = %4d lines/cm", N);

// Result 
// The number of lines ruled on the grating surface = 1584 lines/cm 
