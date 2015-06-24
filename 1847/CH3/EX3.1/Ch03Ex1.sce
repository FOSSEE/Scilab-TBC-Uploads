// Scilab Code Ex3.1:: Page-3.9 (2009)
clc; clear;
lambda = 5890e-008;  // Wavelength of light used, cm
r1 = 0.2;   // Radius of first ring of zone plate, cm
n = 1;  // Order of zone plate
f1 = r1^2/(n*lambda);   // Position of the screen so that light is focused on the brightest spot, cm
 
printf("\nThe position of the screen so that light is focused on the brightest spot = %3.1e cm", lambda);

// Result 
// The position of the screen so that light is focused on the brightest spot = 5.9e-005 cm 
