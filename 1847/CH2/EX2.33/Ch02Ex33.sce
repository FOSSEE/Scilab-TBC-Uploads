// Scilab Code Ex2.33: : Page-2.26 (2009)
clc; clear;
mu = 1.5;       // Refractive index of glass
lambda = 5100e-008; // Wavelength of light used, cm
i = 30;     // Angle of incidence, degrees
n = 1;  // Order of interference fringes
// From Snell's law, mu = sind(i)/sind(r), solving for r
r = asind(sind(i)/mu);  // Angle of refraction, degrees
// For a dark fringe in reflection, 2*mu*t*cosd(r) = n*lambda, solving for t
t = n*lambda/(2*mu*cosd(r));       // Smallest thickness of glass plate for a fringe of minimum intensity, cm
printf("\nThe smallest thickness of glass plate for a fringe of minimum intensity = %4.2e cm", t);

// Result 
// The smallest thickness of glass plate for a fringe of minimum intensity = 1.80e-005 cm 
