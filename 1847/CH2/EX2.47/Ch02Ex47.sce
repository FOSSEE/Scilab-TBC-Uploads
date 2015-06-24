// Scilab Code Ex2.47:: Page-2.33(2009)
clc; clear;
mu = 1.46;      // Refractive index of the soap film
lambda = 6000e-010;     // Wavelength of light used, m
r = 0;      // Angle of refraction for normal incidence, degrees
n = 0;      // Order of interference for minimum thickness
// For bright fringe in reflected pattern,
// 2*mu*t*cosd(r) = (2*n+1)*lambda/2, solving for mu
t = (2*n+1)*lambda/(4*mu*cosd(r));  // Thickness of soap film, m

printf("\nThe thickness of soap film = %5.3e m", t);

// Result
// The thickness of soap film = 1.027e-07 m 
