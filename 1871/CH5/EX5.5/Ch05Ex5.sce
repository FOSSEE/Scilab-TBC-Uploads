// Scilab code Ex5.5: Pg:217 (2008)
clc;clear;
Lambda = 5e-05;    // Wavelength of spectral line, cm
n = 2;    // Second order principal maxima 
theta = 30;    // Direction of principal maxima, degree
aplusb_inv = sind(theta)/(n*Lambda);    // Number of lines in one cm of grating where a is the width of slit and b is the width of opaque region in a grating, cm
printf("\nThe number of lines on the grating surface = %d ", ceil(aplusb_inv));

// Result 
// The number of lines on the grating surface = 5000 