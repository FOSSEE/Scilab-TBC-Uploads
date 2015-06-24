// Scilab Code Ex2.22:: Page-2.19 (2009)
clc; clear;
t = 3.2e-04;    // Thickness of the glass sheet, cm
lambda = 5500e-008;     // Wavelength of light used, cm
n = 5;      // Order of interference fringes
// As path difference (mu - 1)*t = n*lambda
mu = n*lambda/t + 1;    // Refractive indexof the glass sheet

printf("\nThe refractive index of the glass sheet= %4.2f", mu);

// Result 
// The refractive indexof the glass sheet= 1.86 
