// Scilab Code Ex2.70:: Page-2.57(2009)
clc; clear;
N = 250;        // Number of fringes crossing the field of view
delta_x = 0.0595e-01;   // Displacement in movable mirror, cm
// As N*lambda/2 = delta_x, solving for lambda
lambda = 2*delta_x/N;      // Wavelength of light used, cm

printf("\nThe wavelength of monochromatic light used = %4.0f ansgtrom", lambda/1e-008);

// Result
// The wavelength of monochromatic light used = 4760 ansgtrom 
// Answer is given wrong in the textbook
