// Scilab Code Ex2.39:: Page-2.29 (2009)
clc; clear;
t = 0.75e-06;   // Thickness of the glass plate, m
mu = 1.5;      // Refractive index of the glass plate
lambda1 = 4000e-010;    // First wavelength of visible range, cm
lambda2 = 7000e-010;    // Last wavelength of visible range, cm
r = 0;     // Angle of refraction for normal incidence, degrees
n = zeros(2);
// For bright fringe in reflected pattern,
// 2*mu*t*cosd(r) = (2*n+1)*lambda/2, solving for n
// For lambda1
n(1) = (4*mu*t*cosd(r)/lambda1-1)/2;
// For lambda2
n(2) = (4*mu*t*cosd(r)/lambda2-1)/2;

printf("\nFor n = %d and n = %d the light is strongly reflected.", n(1), ceil(n(2)));

// Result
// For n = 5 and n = 3 the light is strongly reflected. 
