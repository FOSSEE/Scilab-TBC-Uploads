// Scilab Code Ex2.1:: Page-2.9 (2009)
clc; clear;
lambda = 5893e-008;  // Wavelength of light used, m
D = 200;    // Distance of the source from the screen, m
b = 0.2;    // Fringe separation, cm
d = lambda*D/b; // Separation between the slits, cm

printf("\nThe separation between the slits = %3.1e cm", d);

// Result 
// The separation between the slits = 5.9e-002 cm
