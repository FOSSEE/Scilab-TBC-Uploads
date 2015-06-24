// Scilab Code Ex2.49:: Page-2.35(2009)
clc; clear;
mu = 1.4;      // Refractive index of the film
lambda = 5500e-008; // Wavelength of the light, cm
// As alpha = (delta_t)/x and x = 10*b; b = lambda/(2*mu*alpha), solving for dt
delta_t = 10*lambda/(2*mu);     // Difference between the thicknesses of the films, cm

printf("\nDifference between the thicknesses of the films = %4.2e cm", delta_t);

// Result
// Difference between the thicknesses of the films = 1.96e-04 cm 
