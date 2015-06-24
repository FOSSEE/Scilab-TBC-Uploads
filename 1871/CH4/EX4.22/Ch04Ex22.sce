// Scilab code Ex4.22 : Pg:159 (2008)
clc;clear;
lambda = 5890e-008;    // Wavelength of light used, cm
n = 12;    // Number of bright fringe to which the central fringe shifts
mu = 1.60;    // The refractive index of transparent material
t = n*lambda/(mu-1);    // Thickness of transparent material, cm
printf("\nThe thickness of the transparent material = %5.3e cm", t);

// Result 
// The thickness of the transparent material = 1.178e-003 cm 
// The answer is given wrong in the textbook