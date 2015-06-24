// Scilab code Ex4.8 : Pg:146 (2008)
clc;clear;
D = 200;    // Distance between the source and the screen, cm
Lambda = 5100e-08;    // Wavelength of light, cm
x = 2;    // Separation of fringes, cm
n = 10;    // number of fringes
omega = x/n;    // Fringe width, cm
d = D*Lambda/(2*omega);    // Double slit separation, mm
printf("\nThe double slit separation = %4.2f mm", 2*d*10);

// Result 
// The double slit separation = 0.51 mm