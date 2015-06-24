// Scilab Code Ex5.12: Page:301 (2011)
clc;clear;
lambda = 5.893e-007;....// Wavelength of the sodium light, m
mu = 1.42;....// Refractive index of the soap film
r = 0;    // Angle of refraction, degrees
n = 0;    // Order of diffraction for least thickness of dark film
t = (2*n+1)*lambda/(4*mu*cosd(r));    // Least thickness of the film that will apear bright, m
printf("\nThe least thickness of the film that will appear bright = %5.1f m", t/1e-010);
n = 1;    // Order of diffraction for least thickness of bright film
t = n*lambda/(2*mu*cosd(r));    // Least thickness of the film that will apear dark, m 
printf("\nThe least thickness of the film that will appear dark = %6.2f m",t/1e-010);

// Result
// The least thickness of the film that will appear bright = 1037.5 m
// The least thickness of the film that will appear dark = 2075.00 m 
