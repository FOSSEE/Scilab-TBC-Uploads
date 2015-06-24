// Scilab Code Ex2.65:: Page-2.49(2009)
clc; clear;
lambda = 5896e-008;    // Wavelength of light used, cm
R = 100;        // Radius of curvature of the lens, cm
D10 = 0.4;      // Diametre of 10th dark ring, cm
n = 10;     // Order of Newton ring
// As for a dark ring, 2*mu*t = n*lambda and 2*t = (D10/2)^2/R, solving for mu
mu = 4*n*lambda*R/D10^2;    // Refractive index of the liquid filled into container

printf("\nThe refractive index of the liquid filled into container = %4.2f", mu);

// Result
// The refractive index of the liquid filled into container = 1.47 
