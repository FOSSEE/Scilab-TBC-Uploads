// Scilab Code Ex2.71:: Page-2.58(2009)
clc; clear;
delta_x = 0.02559e-01;   // Displacement in movable mirror, cm
lambda = 5890e-008;      // Wavelength of light used, cm
// As N*lambda/2 = delta_x, solving for N
N = 2*delta_x/lambda;       // Number of fringes crossing the field of view

printf("\nThe number of fringes that passes across the cross wire of telescope = %2d", ceil(N));

// Result
// The number of fringes that passes across the cross wire of telescope = 87 
