// Scilab Code Ex3.14:: Page-3.26 (2009)
clc; clear;
a = 0.025;       // Slit width, cm
n = 2;          // Order of diffraction
f = 400;        // Focal length of the lens, cm
x = 2.1;        // Position of central maxima, cm
// As theta = n*lambda/a and theta = x/f, solving for lambda
lambda = x*a/(n*f);     // Wavelength of light used, cm
printf("\nThe wavelength of light used = %4d angstrom", lambda/1e-008);

// Result 
// The wavelength of light used = 6562 angstrom 
