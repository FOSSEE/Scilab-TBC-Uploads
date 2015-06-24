// Scilab Code Ex3c.9: Page-186 (2008)
clc; clear;
D = 100;    // Distance between the source and the slit, cm
bita = 0.0135;    // Fringe width, cm
alpha = %pi/360;    // Angle of refracting face with the base of biprism, radian
mu = 1.5;    // Refractive index of the material of biprism
x = 50;    // Distance between slit and the biprism, cm
d = 2*(mu-1)*x*alpha;   // Separation between the two virtual slits, cm
lambda = bita*d/D;    // Wavelength of light, cm
printf("\nThe wavelength of light from biprism interference pattern = %4d angstrom", lambda/1e-008);

// Result
// The wavelength of light from biprism interference pattern = 5890 angstrom 