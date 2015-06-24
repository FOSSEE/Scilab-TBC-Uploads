// Scilab Code Ex7.9:: Page-7.13 (2009)
clc; clear;
NA = 0.28;      // Numerical aperture of the step index fibre
d = 55e-006;    // Diameter of the core, m
lambda = 0.9e-006;  // Wavelength of transmitted light, m
M_N = (2.22*d*(NA)/lambda)^2;   // Number of modes in the step index fibre

printf("\nThe number of modes in the step index fibre = %4d degrees", M_N);

// Result 
// The number of modes in the step index fibre = 1442 degrees 
