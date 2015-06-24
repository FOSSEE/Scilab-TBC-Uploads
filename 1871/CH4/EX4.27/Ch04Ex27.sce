// Scilab code Ex4.27 : Pg:167 (2008)
clc;clear;
lambda = 5890e-008;    // Wavelength of light, cm
mu = 1.5;    // Refractive index of oil
i = 30;    // Angle of incidence, degree
n = 8;    // Order of dark band
sin_r = sind(i)/mu;    // Sine of angle of reflection from Snell's Law, degree
cos_r = sqrt(1-sin_r^2);    // Cosine of angle of reflection from the trigonometric identity, degree
t = n*lambda/(2*mu*cos_r);    // The thickness of the oil film, cm
printf("\nThe thickness of the oil film = %5.3e cm", t);

// Result 
// The thickness of the oil film = 1.666e-004 cm 