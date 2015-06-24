// Scilab Code Ex2.59:: Page-2.47(2009)
clc; clear;
D_15 = 1.62;        // Diameter of 15th dark ring with air film, cm
D_15_prime = 1.47;        // Diameter of 15th dark ring with liquid, cm
R = 1;      // For simplicity assume radius of curvature to be unity, cm
n = 15;      // Order of 15rd Newton ring
// As for ring with air film, D_15^2 = 4*15*R*lambda, solving for lambda
lambda = D_15^2/(4*15*R);    // Wavelength of light used, cm
// As for ring with liquid, D_15_prime^2 = 4*15*R*lambda/mu, solving for mu
mu = 4*15*R*lambda/D_15_prime^2;        // Refractive index of the liquid
printf("\nThe refractive index of the liquid = %4.2f", mu)

// Result
// The refractive index of the liquid = 1.21 
