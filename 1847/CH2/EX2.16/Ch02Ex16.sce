// Scilab Code Ex2.16:: Page-2.14 (2009)
clc; clear;
mu = 1.5;   // Refractive index of biprism
lambda = 5500e-008;    // Wavelength of light used, cm
y1 = 25;    // Distance of biprism from the source, cm
y2 = 150;    // Distance of biprism from the screen, cm
D = y1 + y2;    // Distance between slits and the screen, cm
b = 0.05;  // Fringe width of the interfernce pattern due to biprism, cm
// As d = 2*(mu-1)*alpha*y1, solving for alpha
alpha = lambda*D/(b*2*(mu-1)*y1)    // Angle of vertex of the biprism, radian

printf("\nThe angle of vertex of the biprism = %6.4f rad", alpha);

// Result
// The angle of vertex of the biprism = 0.0077 rad 
