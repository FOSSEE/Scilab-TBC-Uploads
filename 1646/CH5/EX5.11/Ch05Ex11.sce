// Scilab Code Ex5.11: Page-301 (2011)
clc;clear;
mu = 1.43;....// Refractive index of the soap film
n = 0;    // Order of fringes for smallest thickness
i = 30;    // Angle of incidence, degrees
// As sin(i)/sin(r) = mu, cos(r)
cosr = sqrt(1-(sind(i)/mu)^2);    // Cosine of angle r
lambda = 6.0e-007;....// Wavelength of the light, m
t = (2*n+1)*lambda/(4*mu*cosr);....// Thickness of the soap film, m
printf("\nThe thickness of the soap film = %4.2e m", t);

// Result
// The thickness of the soap film = 1.12e-007 m 
