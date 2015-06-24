// Scilab Code Ex2.37:: Page-2.28 (2009)
clc; clear;
mu = 1.6;      // Refractive index of the mica plate
r = 60;     // Angle of refraction of the light ray on the mica plate, degrees
lambda = 5500e-008;     // Wavelength of light used, cm
n = 1;  // Order of interference for minimum thickness
// For dark fringe in reflected pattern,
// 2*mu*t*cosd(r) = 2*n*lambda, solving for t
t = n*lambda/(2*mu*cosd(r));    // Minimum thickness of the plate that will appear dark in the reflection pattern

printf("\nThe minimum thickness of the plate that will appear dark in the reflection pattern = %4.2e cm", t);

// Result
// The minimum thickness of the plate that will appear dark in the reflection pattern = 3.44e-05 cm 
