// Scilab Code Ex2.41:: Page-2.30 (2009)
clc; clear;
mu = 5/4;      // Refractive index of the film
lambda = 5890e-010;    // Wavelength of visible light, cm
i = 45;     // Angle of incidence, degrees
n = 1;      // Order of interference is unity for minimum thickness in dark reflected pattern
// As mu = sind(i)/sind(r), solving for r
r = asind(sind(i)/mu);
// For dark fringe in reflected pattern,
// 2*mu*t*cosd(r) = n*lambda, solving for t
t = n*lambda/(2*mu*cosd(r));    // Thickness of the soap film for dark fringe in reflected pattern

printf("\nThe thickness of the soap film for dark fringe in reflected pattern = %5.3e cm", t);

// Result
// The thickness of the soap film for dark fringe in reflected pattern = 2.857e-07 cm 
