// Scilab Code Ex2.63:: Page-2.49(2009)
clc; clear;
R1 = 4;       // Radius of curvature of the convex surface, m
R2 = 5;       // Radius of curvature of the concave surface, m
lambda = 6600e-010; // Wavelength of light used, cm
n = 15;     // Order of Newton ring
// As D_n^2*(1/R1-1/R2) = 4*n*lambda, solving for D_n
D_15 = sqrt(4*n*lambda/(1/R1-1/R2));     // Diameter of 15th dark ring, cm

printf("\nThe diameter of %dth dark ring = %4.2e m", n, D_15);

// Result
// The diameter of 15th dark ring = 2.81e-002 m 
// The answer is given wrong in the textbook (the square root is not solved)
