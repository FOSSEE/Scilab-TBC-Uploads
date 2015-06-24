// Scilab Code Ex2.12:: Page-2.13 (2009)
clc; clear;
lambda = 5893e-008;    // Wavelength of light used, cm
y1 = 10;    // Distance of biprism from the source, cm
y2 = 100;    // Distance of biprism from the screen, cm
D = y1 + y2;    // Distance between slits and the screen, cm
b = 3.5e-02;  // Fringe width of the interfernce pattern due to biprism, cm
d = lambda*D/b;  // Distance between coherent sources, cm

printf("\nThe distance between coherent sources = %5.3f cm", d);

// Result
// The distance between coherent sources = 0.185 cm   
