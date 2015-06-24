// Scilab Code Ex2.50:: Page-2.36(2009)
clc; clear;
mu = 1.6;      // Refractive index of the film
lambda = 5500e-008; // Wavelength of the light, cm
b = 0.1;       // Fringe width, cm
// As b = lambda/(2*mu*alpha), solving for alpha
alpha = lambda/(2*mu*b);    // Angle of thin wedge shaped film, radian
printf("\nAngle of thin wedge shaped film = %3.1e radian", alpha);

// Result
// Angle of thin wedge shaped film = 1.7e-04 radian 
