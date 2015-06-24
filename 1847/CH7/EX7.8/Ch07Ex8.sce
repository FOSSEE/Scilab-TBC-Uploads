// Scilab Code Ex7.8: : Page-7.13 (2009)
clc; clear;
NA = 0.16;      // Numerical aperture of the step index fibre
n1 = 1.50;      // Refractive index of the core material
d = 65e-006;    // Diameter of the core, m
lambda = 0.9e-006;  // Wavelength of transmitted light, m
V = %pi*d/lambda*NA;  // V-number for the optical fibre

printf("\nThe V-number for the optical fibre = %5.2f", V);

// Result 
// The V-number for the optical fibre = 36.30 
