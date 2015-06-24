// Scilab Code Ex2.46:: Page-2.33(2009)
clc; clear;
V = 0.58e-006;   // Volume of oil, metre cube
A = 2.5;        // Area of water surface, metre square
t = V/A;    // Thickness of film, m
r = 0;      // Angle of refraction for normal incidence, degrees
n = 1;      // Order of interference for minimum thickness
lambda = 4700e-010;     // Wavelength of light used, m
// For dark fringe in reflected pattern,
// 2*mu*t*cosd(r) = n*lambda, solving for mu
mu = n*lambda/(2*t*cosd(r));    // Refractive index of oil

printf("\nThe refractive index of oil = %5.3f", mu);

// Result
// The refractive index of oil = 1.013 
