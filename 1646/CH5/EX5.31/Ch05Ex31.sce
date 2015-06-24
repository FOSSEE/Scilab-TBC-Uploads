// Scilab Code Ex5.31:Page:312 (2011)
clc;clear;
lambda = 5.5e-007;....// Wavelength of light used, m
x = 1.5e-003;....// Distance between the two pinholes, m
a = 4.0e-003;....// Diameter of objective, m
D = a*x/(1.22*lambda);    // Minimum distance from the telescope at which the the pinhole can be resolved from Rayleigh criterian, m 
printf("\nThe minimum distance from the telescope at which the the pinhole can be resolved = %4.2f m ", D);

// Result
// The minimum distance from the telescope at which the the pinhole can be resolved = 8.9
