// Scilab code Ex5.15: Pg:225 (2008)
clc;clear;
Lambda = 5080e-08;    // Wavelength of light on the grating, cm
theta = 90;    // Angle of incidence of light on grating, degree
d = 2.54;    // Total ruled width of grating, cm
frac_lambda_max = d/Lambda;
printf("\nThe maximum resolving power = %1.0e ", frac_lambda_max);

// Result 
// The maximum resolving power = 5e+004  