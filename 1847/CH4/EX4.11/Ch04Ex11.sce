// Scilab Code Ex4.11:: Page-4.23 (2009)
clc; clear;
mu_o = 1.5442;   // Refractive index of ordinary wave
mu_e = 1.5533;   // Refractive index of extraordinary wave
lambda = 5000e-008; // Wavelength of light used, m
// As (mu_o - mu_e)*t = lambda/4, solving for t
t = lambda/(4*(mu_e - mu_o));   // Least thickness of plate for which emergent beam is plane polarised, cm

printf("\nThe least thickness of plate for which emergent beam is plane polarised = %4.2e cm", t);

// Result 
// The least thickness of plate for which emergent beam is plane polarised = 1.37e-003 cm 

 
