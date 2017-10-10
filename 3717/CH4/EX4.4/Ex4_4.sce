// Ex4_4 Page:64 (2014)
clc;clear;
c = 3e+08;    // Speed of the electron, m/s
lambda = 4000e-010;    // Wavelength of the spectral line, m
delta_t = 1e-08;    // Average lifetime of an excited atomic state, s
delta_lambda = lambda^2/(4*%pi*c*delta_t);    // Natural width of the spectral line, m
printf("\nThe natural width of the spectral line = %4.2e m", delta_lambda);

// Result 
// The natural width of the spectral line = 4.24e-015 m