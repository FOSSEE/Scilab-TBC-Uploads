// Scilab Code Ex2.40:: Page-2.30 (2009)
clc; clear;
mu = 1.45;      // Refractive index of the film
lambda = 5500e-010;    // First wavelength of visible range, cm
r = 0;     // Angle of refraction for normal incidence, degrees
n = 0;      // Order of interference is zero for minimum thickness
// For bright fringe in reflected pattern,
// 2*mu*t*cosd(r) = (2*n+1)*lambda/2, solving for t
t = (2*n+1)*lambda/(4*mu*cosd(r));    // Minimum thickness of the film for which light is strongly reflected

printf("\nThe minimum thickness of the film for which light is strongly reflected = %4.2e cm", t);

// Result
// The minimum thickness of the film for which light is strongly reflected = 9.48e-08 cm 
