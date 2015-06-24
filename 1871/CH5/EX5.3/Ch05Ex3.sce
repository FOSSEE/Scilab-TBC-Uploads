// Scilab code Ex5.3:  Pg:207 (2008)
clc;clear;
a = 0.04;    // Width of slit, cm
Lambda = 5500e-08;    // Wavelength of light, cm
x = 0.5;    // Distance from the central maximum at which both fourth and fifth minimum occur, cm
f = 100;    // Focal length of lens, cm
theta = x/f;    // Angle of diffraction, radian
// As a*sin(theta) = 4*Lambda_1 = 5*Lambda_2, solving for Lambdas
Lambda_1 = a*sin(theta)/4;    // First wavelength, cm
Lambda_2 = 4*Lambda_1/5;    // Second wavelength, cm
printf("\nThe two wavelengths of incident lights are:\nLambda_1 = %1.0e cm; Lambda_2 = %1.0e cm", Lambda_1, Lambda_2);

// Result 
// The two wavelengths of incident lights are:
// Lambda_1 = 5e-005 cm; Lambda_2 = 4e-005 cm