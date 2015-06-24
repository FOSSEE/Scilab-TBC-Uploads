// Scilab code Ex5.6: Pg:217 (2008)
clc;clear;
Lambda = 6e-05;    // Wavelength of spectral line, cm
n = 1;    // First order principal maxima 
aplusb = 1/160;    // Grating element where a is the width of slit and b is the width of opaque region in a grating, cm
// since the grating equation is given by (a +b)*sint_theta = n*Lambda. On solving fot theta, we have
theta = asind(n*Lambda/aplusb);    // Direction of principal maxima, minutes
printf("\nThe direction of principal maxima = %2d minutes", theta*60);

// Result 
// The direction of principal maxima = 33 minutes 