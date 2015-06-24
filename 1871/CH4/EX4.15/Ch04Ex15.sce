// Scilab code Ex4.15 : Pg:156 (2008)
clc;clear;
d1 = 0.45;    // Position of the first lens placed between the biprism and the eye-piece, cm
d2 = 0.29;    // Position of the second lens placed between the biprism and the eye-piece, cm
omega = 0.0326;    // Fringe width, cm
D = 200;    // Distance between the biprism and narrow slit, cm
d = sqrt(d1*d2)/2;    // Separation between two virtual sources, cm
Lambda = 2*d*omega/D;    // Wavelength of light used, cm
printf("\nThe wavelength of light used = %4.2e cm", Lambda);

// Result 
// The wavelength of light used = 5.89e-005 cm 