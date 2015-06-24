// Scilab Code Ex2.53:: Page-2.37(2009)
clc; clear;
mu = 1;      // Refractive index of the air film
b = 1.5/25;       // Fringe width, cm
lambda = 5893e-008;    // Wavelength of light used to illuminate a wedge shaped film, cm
// As b = lambda/(2*mu*theta), solving for theta
theta = lambda/(2*mu*b);    // Angle of the wedge, radian

printf("\nThe angle of the wedge shaped air film = %5.3f degrees", theta*180/%pi);

// Result
// The angle of the wedge shaped air film = 0.028 degrees 
