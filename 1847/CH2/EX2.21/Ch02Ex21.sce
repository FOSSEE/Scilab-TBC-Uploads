// Scilab Code Ex2.21: : Page-2.16 (2009)
clc; clear;
lambda = 6000e-008;    // Wavelength of light used, cm
D = 100;    // Distance between slits and the screen, cm
b = 0.05;  // Fringe width of the interfernce pattern due to biprism, cm
d = lambda*D/b;  // Distance between coherent sources, cm

printf("\nThe distance between coherent sources = %3.1f mm", d/1e-01);

// Result
// The distance between coherent sources = 1.2 mm 
