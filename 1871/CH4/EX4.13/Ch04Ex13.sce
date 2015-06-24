// Scilab code Ex4.13 : Pg:155 (2008)
clc;clear;
D = 80;    // Distance between the biprism and narrow slit, cm
Lambda = 5890e-08;    // Wavelength of light, cm
d = 0.05/2;    // Half of the distance between the sources, cm
omega = D*Lambda/(2*d);    // Fringe width, cm
printf("\nThe width of the fringes observed with the biprism = %5.3e cm", omega);

// Result 
// The width of the fringes observed with the biprism = 9.424e-002 cm 