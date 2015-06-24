// Scilab Code Ex3.13:: Page-3.25 (2009)
clc; clear;
a = 0.045;       // Slit width, cm
lambda = 5500e-008;     // Wavelength of light used, cm
f = 250;        // Focal length of the lens, cm
x = lambda*f/a;     // Position of central maxima, cm

printf("\nThe position of central maxima = %5.3f cm", x);
printf("\nThe width of central maxima from first minima = %5.3f cm", 2*x);

// Result 
// The position of central maxima = 0.306 cm
// The width of central maxima from first minima = 0.611 cm 
