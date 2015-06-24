// Scilab Code Ex2.54:: Page-2.37(2009)
clc; clear;
mu = 1.45;      // Refractive index of the film
b = 1/10;       // Fringe width, cm
lambda = 6600e-008;    // Wavelength of light used to illuminate a wedge shaped film, cm
// As b = lambda/(2*mu*theta), solving for theta
theta = lambda/(2*mu*b);    // Angle of the wedge, radian

printf("\nThe acute angle of the wedge shaped film = %6.4f degrees", theta*180/%pi);

// Result
// The acute angle of the wedge shaped film = 0.0130 degrees
