// Scilab Code Ex5.8: Page:300 (2011)
clc;clear;
lambda = 6.0e-007;....// Wavelength of the light, m
mu = 1.463;....// Refrctive index of a soap bubble film
n = 0;    // Value of n for smallest thickness
r = 0;    // Angle of refraction for normal incidence
// As 2*mu*t*cos(r) = (2*n+1)*lambda/2, solving for t
t = (2*n+1)*lambda/(4*mu*cos(r));    // The thickness of a soap bubble film, m 
printf("\nThe thickness of a soap bubble film = %5.1f angstrom", t/1e-010);

// Result
// The thickness of a soap bubble film = 1025.3 angstrom 
