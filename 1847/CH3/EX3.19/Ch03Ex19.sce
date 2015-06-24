// Scilab Code Ex3.19:: Page-3.31 (2009)
clc; clear;
f = 150;    // Distance between screen and slit, cm
a = 0.005;  // Slit width, cm
b = 0.06;   // Distance between slits, cm
lambda = 5500e-008;     // Wavelength of light used, cm
// As half angular separation, theta1 = x1/f = lambda/(2*(a+b)), solving for x1
x1 = f*lambda/(2*(a+b));       // Distance between central maxima and first minima, cm
delta_theta = lambda/(2*(a+b)); // Angular separation between two consecutive minima, radians
printf("\nThe distance between central maxima and first minima = %4.2e cm", x1);
printf("\nThe angular separation between two consecutive minima = %3.1e radians", delta_theta);

// Result 
// The distance between central maxima and first minima = 6.35e-002 cm
// The angular separation between two consecutive minima = 4.2e-004 radians 
