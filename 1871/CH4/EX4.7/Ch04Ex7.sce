// Scilab code Ex4.7 : Pg:146 (2008)
clc;clear;
D = 80;    // Distance between the source and the screen, cm
d = 0.018/2;    // Separation between two coherent sources, cm
n = 4;    // Number of the fringe
x_n = 1.08;    // Distance of nth bright fringe from the center of central fringe, cm
// As x_n = n*Lambda*D/(2*d), solving for Lambda
Lambda = x_n*2*d/(n*D);    // wavelength of light, Angstorm 
printf("\nThe wavelength of light used = %4.0f angstrom", Lambda/1e-008);

// Result 
// The wavelength of light used = 6075 angstrom