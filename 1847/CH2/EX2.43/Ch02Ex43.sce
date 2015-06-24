// Scilab Code Ex2.43:: Page-2.31(2009)
clc; clear;
mu = 1.33;      // Refractive index of the film
i = asind(0.8);      // Angle of refraction for normal incidence, degrees
// As mu = sind(i)/sind(r), solving for r
r = asind(sind(i)/mu);
lambda1 = 6100e-010;    // First wavelength of dark band, m
lambda2 = 6000e-010;    // Second wavelength of dark band, m
// For consecutive overlapping wavelenghts
// n*lambda1 = (n+1)*lambda2, solving for n
n = lambda2/(lambda1-lambda2);
// For dark fringe in reflected pattern,
// 2*mu*t*cosd(r) = n*lambda1, solving for t
t = n*lambda1/(2*mu*cosd(r));   // Thickness of the film with incident white light. m
printf("\nThickness of the film with incident white light = %3.1e m", t);

// Result
// Thickness of the film with incident white light = 1.7e-05 m 
