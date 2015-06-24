// Scilab Code Ex2.48: : Page-2.35(2009)
clc; clear;
mu = 1.4;      // Refractive index of the film
alpha = 1.07e-004;  // Acute angle of the wedge, radian
b = 0.2;    // Fringe width, cm
// As b = lambda/(2*mu*alpha), solving for lambda
lambda = 2*mu*alpha*b;  // Wavelength of light falling on wedge shaped film, m

printf("\nThe wavelength of light falling on wedge shaped film = %4d ansgtrom", lambda/1e-008);

// Result
// The wavelength of light falling on wedge shaped film = 5991 ansgtrom 
