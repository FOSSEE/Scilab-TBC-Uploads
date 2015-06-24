// Scilab Code Ex3.12:: Page-3.25 (2009)
clc; clear;
a = 0.04;       // Slit width, cm
x = 0.5;        // Half width of central maximum, cm
f = 300;        // Focal length of the lens, cm
// As x = lambda*f/a, solving for lambda
lambda = a*x/f;     // Wavelength of light used in Fraunhoffer diffraction due to single slit, cm

printf("\nThe wavelength of light used in Fraunhoffer diffraction due to a single slit = %4d angstrom", lambda/1e-008);

// Result 
// The wavelength of light used in Fraunhoffer diffraction due to a single slit = 6666 angstrom 
