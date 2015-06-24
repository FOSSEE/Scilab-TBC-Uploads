// Scilab code Ex4.17 : Pg:156 (2008)
clc;clear;
omega = 1.888/20;    // Fringe width, cm
D = 120;    // Distance between the biprism and narrow slit, cm
d = 0.075/2;    // Half the distance between two coherent sources, cm
Lambda = 2*d*omega/D;    // Wavelength of light used, cm
printf("\nThe wavelength of the light of the source = %4d angstrom", Lambda/1e-008);

// Result 
// The wavelength of the light of the source = 5900 angstrom 