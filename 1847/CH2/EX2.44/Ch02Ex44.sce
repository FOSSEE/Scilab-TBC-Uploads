// Scilab Code Ex2.44:: Page-2.31(2009)
clc; clear;
mu = 1.5;      // Refractive index of the film
i = 45;      // Angle of incidence, degrees
// As mu = sind(i)/sind(r), solving for r
r = asind(sind(i)/mu);
lambda = 5500e-010;    // Wavelength of parallel beam of light, m
n = 15;     // Order of dark band
// For dark fringe in reflected pattern,
// 2*mu*t*cosd(r) = n*lambda, solving for t
t = n*lambda/(2*mu*cosd(r));   // Thickness of the film with incident parallel beam of light. m

printf("\nThe thickness of the film with paralle beam of yellow light = %4.2e m", t);

// Result
// The thickness of the film with paralle beam of yellow light = 3.12e-06 m
