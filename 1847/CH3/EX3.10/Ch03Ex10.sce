// Scilab Code Ex3.10:: Page-3.24 (2009)
clc; clear;
f = 250;        // Focal length of the lens, cm
x = 0.8;        // Half width of central maxima, cm
lambda = 5500e-008;     // Wavelength of light used, cm
// As x = f*lambda/a, solving for a
a = f*lambda/x;     // Slit width in Fraunhofer single slit experiment

printf("\nThe slit width = %5.3f cm", a);

// Result 
// The slit width = 0.017 cm 
