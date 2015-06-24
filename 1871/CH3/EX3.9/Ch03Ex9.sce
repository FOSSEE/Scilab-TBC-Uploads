// Scilab code Ex3.9 : Pg:109 (2008)
clc;clear;
mu_F = 1.5249;    // Refractive index of violet color
mu_C = 1.5164;    // Refractive index of red color
mu_D = (mu_F + mu_C)/2;    // Mean refractive index
omega = (mu_F - mu_C)/(mu_D - 1);    // Dispersive power of the lens
f = 40;    // Focal length of the crown glass lens, cm
CA = omega*f;    // The longitudinal chromatic abberation, cm
printf("\nThe longitudinal chromatic abberation = %6.4f cm", CA);

// Result 
// The longitudinal chromatic abberation = 0.6530 cm 
// The answer is given wrong in the textbook