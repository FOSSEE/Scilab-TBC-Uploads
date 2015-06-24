// Scilab code Ex4.29 : Pg:168 (2008)
clc;clear;
lambda1 = 4e-005;    // First wavelength, cm
lambda2 = 7e-005;    // Second wavelength, cm
t = 0.001;    // The thickness of the air film, cm
mu = 1;    // Refractive index of the air film
i = 30;    // Angle of incidence, degree
// As mu = sin_i/sin_r = 1, so that sin_i = sin_r 
sin_r = sind(30);    // Sine of angle of reflection from Snell's Law, degree
cos_r = sqrt(1-sin_r^2);    // Cosine of angle of reflection from the trigonometric identity, degree
n1 = 2*mu*t*cos_r/lambda1;    // Number of dark bands seen at first wavelength
n2 = 2*mu*t*cos_r/lambda2;    // Number of dark bands seen at second wavelength
n = n1 - n2;    // Number of dark bands observed within the given spectral range
printf("\nThe number of dark bands observed within the given spectral range = %2d", ceil(n));

// Result 
// The number of dark bands observed within the given spectral range = 19