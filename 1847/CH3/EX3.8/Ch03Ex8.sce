// Scilab Code Ex3.8:: Page-3.23 (2009)
clc; clear;
lambda = 5000e-010;     // Wavelength of light used, m
a = 0.7e-002;    // Width of the slit, m
f = 0.5;        // Focal length of the lens, m
n = 1;      // Order of diffraction
// For minima, a*sind(theta_n) = n*lambda
// Also theta_n = n*lambda/a = x1/f, solving for x1
x1 = f*n*lambda/a;        // Position of first minima, cm
// For secondary maxima, a*sind(theta_n) = (2*n+1)*lambda/2
// Also theta_n = 3*lambda/(2*a) = x2/f, solving for x2
n = 1;      // Order of diffraction for first secondary minima
x2 = 3*f*lambda/(2*a);      // Position of first secondary maxima, cm

printf("\nThe distance between first minima and the next minima from the axis = %4.2e cm", x2-x1);

// Result 
// The distance between first minima and the next minima from the axis = 1.79e-005 cm 
