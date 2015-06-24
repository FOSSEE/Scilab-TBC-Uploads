// Scilab Code Ex4.16:: Page-4.24 (2009)
clc; clear;
lambda = 5890e-008; // Wavelength of light used, m
t = 7.5e-004;   // Thickness of the crystal, cm
// As for quarter wave plate, mu_diff*t = (mu_e - mu_o)*t = lambda/4, solving for mu_diff
mu_diff = lambda/(4*t);     // The difference in refractive indices of rays, cm
printf("\nThe difference between refractive indices = %6.4f cm", mu_diff);

// Result 
// The difference between refractive indices = 0.0196 cm 

 
