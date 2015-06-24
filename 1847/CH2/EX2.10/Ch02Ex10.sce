// Scilab Code Ex2.10:: Page-2.12 (2009)
clc; clear;
D = 100;    // Distance between slits and the screen, cm
d = 0.08;  // Separation between the slits, cm
b = 2.121/25;  // Fringe width of the interfernce pattern due to biprism, cm
lambda = b*d/D;     // Wavelength of light in a biprism experiment, cm

printf("\nThe wavelength of light in a biprism experiment = %5.0f angstrom", lambda/1e-008);

// Result
// The wavelength of light in a biprism experiment =  6787 angstrom 
