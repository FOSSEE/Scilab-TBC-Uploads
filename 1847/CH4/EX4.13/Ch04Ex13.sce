// Scilab Code Ex4.13:: Page-4.24 (2009)
clc; clear;
mu_o = 1.54;   // Refractive index of ordinary wave
mu_e = 1.45;   // Refractive index of extraordinary wave
lambda = 5500e-008; // Wavelength of light used, m
// As for a half wave plate, (mu_o - mu_e)*t = lambda/4, solving for t
t = lambda/(2*(mu_o - mu_e));   // The thickness of a half wave plate for wavelength, cm

printf("\nThe thickness of a half wave plate for wavelength = %4.2e cm", t);

// Result 
// The thickness of a half wave plate for wavelength = 3.06e-004 cm 

 
