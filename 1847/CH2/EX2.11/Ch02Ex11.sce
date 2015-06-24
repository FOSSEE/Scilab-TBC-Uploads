// Scilab Code Ex2.11:: Page-2.13 (2009)
clc; clear;
alpha = %pi/180;    // Acute angle of biprism, radian
mu = 1.5;   // Refractive index of biprism
lambda = 5900e-008;    // Wavelength of light used, cm
y1 = 10;    // Distance of biprism from the source, cm
y2 = 100;    // Distance of biprism from the screen, cm
D = y1 + y2;    // Distance between slits and the screen, cm
d = 2*(mu-1)*alpha*y1;  // Separation between the slits, cm
b = lambda*D/d;  // Fringe width of the interfernce pattern due to biprism, cm

printf("\nThe fringe width at a distance of %d cm from biprism = %4.2e cm", y2, b);

// Result
// The fringe width at a distance of 100 cm from biprism = 3.72e-02 cm  
