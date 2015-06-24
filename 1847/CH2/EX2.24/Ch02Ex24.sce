// Scilab Code Ex2.24:: Page-2.19 (2009)
clc; clear;
t = 9.21e-05;    // Thickness of the mica sheet, cm
mu = 1.5;   // Refractive index of material of sheet
n = 1;      // Order of interference fringes
// As path difference, (mu - 1)*t = n*lambda, solving for lambda
lambda = (mu - 1)*t/n;    // Wavelength of light used, cm

printf("\nThe wavelength of light used = %5.3e cm", lambda);

// Result 
// The wavelength of light used = 4.605e-005 cm 
