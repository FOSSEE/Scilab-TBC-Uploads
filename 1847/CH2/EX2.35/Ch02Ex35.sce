// Scilab Code Ex2.35:: Page-2.27 (2009)
clc; clear;
t = 3.8e-05;    // Thickness of the transparent film, cm
mu = 1.5;      // Refractive index of the transparent film
i = 45;     // Angle of incidence of the light ray on the transparent film, degrees
lambda = 5700e-008;     // Wavelength of light, cm
// As mu = sind(i)/sind(r), solving for r
r = asind(sind(i)/mu);
// For dark fringe in reflected pattern,
// 2*mu*t*cosd(r) = 2*n*lambda, solving for n
n = 2*mu*t*cosd(r)/lambda;      // Order of interference of dark band

printf("\nThe order of interference of dark band = %d", ceil(n));

// Result
// The order of interference of dark band = 2velength reflected strongly from the soap film = 5.497e-05 cm 
