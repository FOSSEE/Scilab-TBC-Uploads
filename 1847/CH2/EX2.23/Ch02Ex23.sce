// Scilab Code Ex2.23:: Page-2.19 (2009)
clc; clear;
t = 2.1e-03;    // Thickness of the glass sheet, cm
lambda = 5400e-008;     // Wavelength of light used, cm
n = 11;      // Order of interference fringes
// As path difference, (mu - 1)*t = n*lambda
mu = n*lambda/t + 1;    // Refractive index of the glass sheet

printf("\nThe refractive index of the glass sheet = %4.2f", mu);

// Result 
// The refractive index of the glass sheet= 1.28 
