// Scilab Code Ex5.34: Page:313 (2011)
clc;clear;
lambda = 5.89e-07;....// Wavelength of light used, m
mu_O = 1.55;    // Refractive index of ordinary light
mu_E = 1.54;    // Refractive index of extraordinary light
tQ = lambda/(4*(mu_O-mu_E));    // The thickness of the quarter wave plate, m
printf("\nThe thickness of the quarter plate is = %6.4e m", tQ);

// Result
// The thickness of the quarter plate is = 1.4725e-005 m 
