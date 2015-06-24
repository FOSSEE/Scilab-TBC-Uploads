// Scilab Code Ex2.51:: Page-2.36(2009)
clc; clear;
mu = 1.5;      // Refractive index of the film
b = 0.20;       // Fringe width, cm
theta = 25/(60*60)*%pi/180;     // Angle of the wedge, radian
// As b = lambda/(2*mu*theta), solving for lambda
lambda = 2*mu*b*theta;    // Wavelength of light used to illuminate a wedge shaped film, cm

printf("\nThe wavelength of light used to illuminate a wedge shaped film = %4d angstrom", lambda/1e-008);

// Result
// The wavelength of light used to illuminate a wedge shaped film = 7272 angstrom
// The answer is given wrong in the textbook
