// Scilab Code Ex3c.10: Page-187 (2008)
clc; clear;
mu = 1.5;    // Refractive index of the material of biprism
alpha = %pi/180;    // Base angle of biprism, radian
D = 110;    // Distance between the source and the slit, cm
x = 10;    // Distance between slit and the biprism, cm
d = 2*(mu-1)*x*alpha;   // Separation between the two virtual slits, cm
lambda = 5900e-008;    // Wavelength of light, cm
bita = lambda*D/d;    // Fringe width, cm
printf("\nThe fringe width observed at one metre distance from biprism = %6.4f cm", bita);

// Result
// The fringe width observed at one metre distance from biprism = 0.0372 cm 