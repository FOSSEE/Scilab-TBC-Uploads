// Scilab Code Ex2.69:: Page-2.51(2009)
clc; clear;
R = 100;      // Radius of curvature of plano-convex lens, cm
D15 = 0.590;     // Diameter of 15th dark ring, cm
D5 = 0.336;     // Diameter of 5th dark ring, cm
p = 10;          // Order of 10th Newton ring after 5th ring
lambda = (D15^2-D5^2)/(4*p*R);      // Wavelength of light used, cm

printf("\nThe wavelength of light used = %4.0f ansgtrom", lambda/1e-008);

// Result
// The wavelength of light used = 5880 ansgtrom 
