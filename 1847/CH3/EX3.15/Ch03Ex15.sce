// Scilab Code Ex3.15:: Page-3.26 (2009)
clc; clear;
a = 0.25;       // Slit width, cm
lambda = 5890e-008;     // Wavelength of light, cm
f = 80;         // Focal length of the lens, cm
n = 2;          // Order of diffraction
// As for minima, theta = n*lambda/a and theta = x/f, solving for x
x2 = 2*lambda*f/a;        // Position of 2nd dark fringe, cm
// As for maxima, theta = (2*n+1)*lambda/(2*a) and theta = x/f, solving for x
x2_prime = 5*lambda*f/(2*a);        // Position of 2nd bright fringe, cm
delta_x = x2_prime-x2;      // Distance between 2nd dark and next bright, cm
printf("\nThe distance between 2nd dark and next bright fringe = %4.2e cm", delta_x);

// Result 
// The distance between 2nd dark and next bright fringe = 9.42e-003 cm 
