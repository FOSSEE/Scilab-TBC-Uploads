// Scilab Code Ex6.3: Page-370 (2011)
clc;clear;
d = 2.82e-010;....// Spacing of the rock-salt, m 
n = 2;....// Order of diffraction
theta = %pi/2;    // Angle of diffraction, radian
// Braggs equation for X-rays of wavelength lambda is n*lambda = 2*d*sin(theta), solving for lambda
lambda = 2*d*sin(theta)/n;    // Wavelength of X-ray using Bragg's law, m
printf("\nThe longest wavelength that can be analysed by a rock-salt crystal = %4.2f angstrom", lambda/1e-010);

// Result
// The longest wavelength that can be analysed by a rock-salt crystal = 2.82 angstrom 