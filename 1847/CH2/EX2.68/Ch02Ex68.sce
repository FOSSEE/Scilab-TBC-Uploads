// Scilab Code Ex2.68:: Page-2.51(2009)
clc; clear;
R = 1;      // For simplicity assume radius of curvature to be unity, cm
D8 = 0.45;       // Diameter of 8th dark ring, cm
D15 = 0.81;     // Diameter of 15th dark ring, cm
n = 8;          // Order of 8th Newton ring
p = 7;          // Order of 7th Newton ring after 8th ring
lambda = (D15^2-D8^2)/(4*p*R);      // Wavelength of light used, cm
// As D18^2-D15^2 = 4*p*lambda*R
p = 3;      // For 18th and 15th rings
D18 = sqrt(D15^2+4*p*lambda*R);     // Diameter of 18th ring, cm

printf("\nThe diameter of 18th dark ring = %6.4f cm", D18);

// Result
// The diameter of 18th dark ring = 0.9222 cm 
