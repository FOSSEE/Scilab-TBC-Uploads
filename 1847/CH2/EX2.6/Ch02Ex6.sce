// Scilab Code Ex2.6:: Page-2.11 (2009)
clc; clear;
lambda = 5500e-008;    // Wavelength of light used, cm
Y1 = 10;    // Distance of biprism from the source, cm
Y2 = 90;    // Distance of biprism from the screen, cm
D = Y1 + Y2;    // Distance between slits and the screen, cm
b = 8.526e-02;  // Fringe width, cm
d = lambda*D/b;  // Separation between the slits, cm

printf("\nThe distance between two coherent sources = %4.2e cm", d);

// Result
// The distance between two coherent sources = 6.45e-02 cm 
