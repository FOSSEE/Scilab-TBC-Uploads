// Scilab code Ex4.6: : Pg:146 (2008)
clc;clear;
D = 60;    // Distance between the source and the screen, cm
Lambda = 5.9e-05;    // Wavelength of light, cm
d = 0.3/2;    // Separation between the slits, cm
omega = D*Lambda/(2*d);    // Fringe width, cm
printf("\nThe value of fringe width = %6.4f cm", omega);

// Result 
// The value of fringe width = 0.0118 cm 