// Scilab code Ex4.14 : Pg:155 (2008)
clc;clear;
D = 110;    // Distance between the biprism and narrow slit, cm
Lambda = 5500e-08;    // Wavelength of light, cm
mu = 1.5;    // refractive index of glass biprism
a = 10;    // Distance of slit from biprism, cm
alpha = 2*%pi/180;    // Angle between the inclined faces and base of prism, degree
d = a*(mu-1)*alpha;    // Separation between two virtual sources, cm
omega = D*Lambda/(2*d);    // Fringe width at a distance of one meter from biprism, cm
printf("\nThe width of the fringes in the eye-piece from the biprism = %6.4f cm", omega);

// Result 
// The width of the fringes in the eye-piece from the biprism = 0.0173 cm 