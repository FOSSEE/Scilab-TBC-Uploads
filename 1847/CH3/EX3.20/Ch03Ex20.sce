// Scilab Code Ex3.20:: Page-3.32 (2009)
clc; clear;
f = 120;    // Distance between screen and slit, cm
a = 0.019;  // Slit width, cm
b = 0.041;   // Distance between slits, cm
lambda = 6500e-008;     // Wavelength of light used, cm
// As theta1 = x1/f = lambda/(2*(a+b)), solving for x1
x1 = f*lambda/(2*(a+b));       // Position of first secondary minima, cm
// As theta2 = x2/f = lambda/(a+b), solving for x2
x2 = f*lambda/(a+b);       // Position of first secondary maxima, cm

printf("\nThe position of first secondary minima = %5.3f cm", x1);
printf("\nThe position of first secondary maxima = %4.2f cm", x2);

// Result 
// The position of first secondary minima = 0.065 cm
// The position of first secondary maxima = 0.13 cm 
