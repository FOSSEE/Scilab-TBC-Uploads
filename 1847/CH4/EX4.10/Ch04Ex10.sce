// Scilab Code Ex4.10:: Page-4.23 (2009)
clc; clear;
mu_o = 1.658;   // Refractive index of ordinary wave
mu_e = 1.486;   // Refractive index of extraordinary wave
lambda = 5893e-008; // Wavelength of light used, m
// As (mu_o - mu_e)*t = lambda/4, solving for t
t = lambda/(4*(mu_o - mu_e));   // Thickness of quarter-wave plate, cm

printf("\nThe thickness of quarter-wave plate = %3.1e cm", t);

// Result 
// The thickness of quarter-wave plate = 8.6e-005 cm 

 
