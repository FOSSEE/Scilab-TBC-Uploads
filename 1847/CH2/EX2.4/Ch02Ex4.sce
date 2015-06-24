// Scilab Code Ex2.4:: Page-2.10 (2009)
clc; clear;
d = 0.02; // Separation between the slits, cm
D = 100;    // Distance of the source from the screen, m
n = 6;  // No. of bright fringe from the centre
x = 1.22;   // Position of 6th bright fringe, cm
lambda = x*d/(n*D);  // Wavelength of light used, m
printf("\nThe wavelength of the light from coherent sources = %5.3e cm", lambda);

// Result 
// The wavelength of the light from coherent sources = 4.067e-005 cm 
