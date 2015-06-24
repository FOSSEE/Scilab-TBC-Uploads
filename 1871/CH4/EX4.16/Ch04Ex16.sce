// Scilab code Ex4.16 : Pg:156 (2008)
clc;clear;
omega = 0.0196;    // Fringe width, cm
D = 100;    // Distance between the biprism and narrow slit, cm
I = 0.70;    // Separation of the two coherent sources, cm
u = 30;    // Distance of the lens from the slit, cm
v = D - u;    // Distance of image from the lens, cm
// As magnification, M = I/O = v/u and O = 2*d, solving for d
d = I*u/(2*v);    // Half the distance between two coherent sources, cm
Lambda = 2*d*omega/D;    // Wavelength of light used, cm
printf("\nThe wavelength of light used = %4.2e cm", Lambda);

// Result 
// The wavelength of light used = 5.88e-005 cm 