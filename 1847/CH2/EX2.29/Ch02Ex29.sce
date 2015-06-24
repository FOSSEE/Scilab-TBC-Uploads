// Scilab Code Ex2.29:: Page-2.21 (2009)
clc; clear;
lambda = 5890e-008;     // Wavelength of light used, cm
n = 5;      // Order of interference fringes
mu = 1.5;   // Refractive index of the mica sheet
// As path difference, (mu - 1)*t = n*lambda, solving for t
t = n*lambda/(mu-1);    // Thickness of the mica sheet, cm

printf("\nThe thickness of the mica sheet = %4.2e cm", t);

// Result 
// The thickness of the mica sheet = 5.89e-004 cm 
