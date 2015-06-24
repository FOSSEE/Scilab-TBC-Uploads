// Scilab Code Ex2.60:: Page-2.48(2009)
clc; clear;
D_10 = 0.48;        // Diameter of 10th dark ring with air film, cm
D_3 = 0.291;        // Diameter of 3rd dark ring with air film, cm
p = 7;      // Order of the 10th ring next to the 3rd ring
R = 90;     // Radius of curvature of the lens, cm
lambda = (D_10^2-D_3^2)/(4*p*R);      // Wavelength of light used in Newton rings experiment

printf("\nThe wavelength of light used in Newton rings experiment = %4d angstrom", lambda/1e-008);

// Result
// The wavelength of light used in Newton rings experiment = 5782 angstrom 
