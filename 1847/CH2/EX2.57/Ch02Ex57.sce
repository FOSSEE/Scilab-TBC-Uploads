// Scilab Code Ex2.57: : Page-2.47(2009)
clc; clear;
R = 1;      // For simplicity assume radius of curvature of the lens to be unity, cm
n = 30;      // Order of 3rd Newton ring
D_30 = 1;   // Assume diameter of thirtieth ring to be unity, cm
// As D_30^2 = 4*n*R*lambda, solving for lambda
lambda = D_30^2/(4*n*R);    // Wavelength of light used, cm
D_n = 3*D_30;       // Diameter of nth dark ring having thrice the diameter of the thirtieth ring, cm
n = D_n^2/(4*R*lambda);     // Order of a dark ring having thrice the diameter of the thirtieth ring

printf("\nThe order of the dark ring having thrice the diameter of the thirtieth ring = %3d", n);

// Result
// The order of the dark ring having thrice the diameter of the thirtieth ring = 270 
