// Scilab Code Ex4.12:: Page-4.23 (2009)
clc; clear;
lambda = 5893e-008; // Wavelength of light used, m
t = 0.005;   // Thickness of the crystal, cm
// As for quarter wave plate, mu_diff*t = (mu_o - mu_e)*t = lambda/4, solving for mu_diff
mu_diff = lambda/(4*t);     // The difference in refractive indices of rays, cm
printf("\nThe least thickness of plate for which emergent beam is plane polarised = %4.2e cm", mu_diff);

// Result 
// The least thickness of plate for which emergent beam is plane polarised = 2.95e-003 cm 

 
