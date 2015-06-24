// Scilab Code Ex2.7:: Page-2.11 (2009)
clc; clear;
alpha = %pi/180;    // Acute angle of biprism, radian
mu = 1.5;   // Refractive index of biprism
lambda = 5500e-008;    // Wavelength of light used, cm
y1 = 5;    // Distance of biprism from the source, cm
y2 = 75;    // Distance of biprism from the screen, cm
D = y1 + y2;    // Distance between slits and the screen, cm
d = 2*(mu-1)*alpha*y1;  // Separation between the slits, cm
b = lambda*D/d;  // Fringe width of the interfernce pattern due to biprism, cm

printf("\nThe fringe width of the interfernce pattern due to biprism = %4.2e cm", b);

// Result
// The fringe width of the interfernce pattern due to biprism = 5.04e-02 cm 
