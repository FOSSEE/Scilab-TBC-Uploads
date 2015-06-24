// Scilab Code Ex2.27:: Page-2.20 (2009)
clc; clear;
t = 21.5e-05;    // Thickness of the glass sheet, cm
lambda = 5890e-008;     // Wavelength of light used, cm
n = 1;      // Order of interference fringes
// As path difference, (mu - 1)*t = n*lambda
mu = n*lambda/t + 1;    // Refractive indexof the glass sheet

printf("\nThe refractive index of the glass sheet = %5.3f", mu);

// Result 
// The refractive index of the glass sheet = 1.274 
