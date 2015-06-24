// Scilab Code Ex2.56:: Page-2.46(2009)
clc; clear;
R = 1;      // For simplicity assume radius of curvature of the lens to be unity, cm
D_n = 0.251;     // Diameter of 3rd dark ring, cm
D_nplusp = 0.548;     // Diameter of 9th dark ring, cm
n = 3;      // Order of 3rd Newton ring
p = 9 - n;    // Order of 6th Newton ring from 3rd ring
// As D_nplusp^2 - D_n^2 = 4*p*R*lambda, solving for lambda
lambda = (D_nplusp^2 - D_n^2)/(4*p*R);      // Wavelength of light used
D_15 = sqrt(D_n^2+4*(15-n)*lambda*R);       // Diameter of 15th dark ring, cm

printf("\nThe diameter of 15th dark ring = %5.3f cm", D_15);

// Result
// The diameter of 15th dark ring = 0.733 cm 
