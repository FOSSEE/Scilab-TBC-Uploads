// Scilab Code Ex2.30:: Page-2.21 (2009)
clc; clear;
b = 1;      // For simplicity assume fringe width to be unity, cm
S = 30*b;   // Fringe shift, cm
lambda = 6600e-008;     // Wavelength of light used, cm
t = 4.9e-003;       // Thickness of the film, cm
// As S = b/lambda*(mu-1)*t, solving for mu
mu = S*lambda/t + 1;       // Refractive index of material from shifting fringe pattern

printf("\nThe refractive index of material from shifting fringe pattern = %3.1f", mu);

// Result 
// The refractive index of material from shifting fringe pattern = 1.4 
