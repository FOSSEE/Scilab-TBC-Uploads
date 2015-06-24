// Scilab code Ex1.15: Pg:44 (2008)
clc;clear;
function [deg, minute] = deg2min(theta)
    deg = floor(theta);
    minute = (theta-deg)*60;
endfunction
d = 3.14e-010;    // Interplanar spacing in sylvine crystal, cm
n = 1;    // Order of reflectio
h = 6.62e-034;    // Planck's constant, joule-sec
c = 3e+08;    // Velocity of light, m/s
E = 0.01*1e+06*1.6e-019;    // Energy of X-ray beam, joule
Lambda = h*c/E;    // Wavelength of X-rays, m
// Since 2*d*sin theta = n*Lambda, solving for theta
theta = asind(n*Lambda)/(2*d)    // Glancing angle, degree
[deg, minute] = deg2min(theta);
printf("\nThe glancing angle for the first order Bragg spectrum in Sylvine crystal = %2d degree %2d minute", deg, minute);

// Result
// The glancing angle for the first order Bragg spectrum in Sylvine crystal = 11 degree 19 minute
// The answer is given wrongly in the textbook