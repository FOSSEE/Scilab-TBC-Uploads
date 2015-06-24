// Scilab Code Ex4.15:: Page-4.24 (2009)
clc; clear;
mu_o = 1.51;   // Refractive index of ordinary wave
mu_e = 1.55;   // Refractive index of extraordinary wave
lambda = 6000e-008; // Wavelength of light used, m
// As for a half wave plate, (mu_o - mu_e)*t = lambda/4, solving for t
t = lambda/(2*(mu_e - mu_o));   // The thickness of a quarter wave plate for wavelength, cm

printf("\nThe thickness of a half wave plate quartz = %4.2e cm", t);

// Result 
// The thickness of a half wave plate quartz = 7.50e-004 cm 

 
