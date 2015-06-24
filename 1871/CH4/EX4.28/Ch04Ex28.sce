// Scilab code Ex4.28 : Pg:168 (2008)
clc;clear;
lambda1 = 6.1e-005;    // Wavelength corresponding to the first dark band, cm
lambda2 = 6.0e-005;    // Wavelength corresponding to the second dark band, cm
n = lambda2/(lambda1 - lambda2);    // Order of dark band
mu = 4/3;    // Refractive index of the film
sin_i = 4/5;    // Sine of ngle of incidence
sin_r = sin_i/mu;    // Sine of angle of reflection from Snell's Law, degree
cos_r = sqrt(1-sin_r^2);    // Cosine of angle of reflection from the trigonometric identity, degree
t = n*lambda1/(2*mu*cos_r);    // The thickness of the oil film, cm
printf("\nThe thickness of the soap film = %6.4f cm", t);

// Result 
// The thickness of the soap film = 0.0017 cm 