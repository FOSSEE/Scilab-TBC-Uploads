// Scilab Code Ex7.19: Page-384 (2008)
clc; clear;
function [d, m] = deg2degmin(theta)
    d = int(theta);
    m = (theta-d)*60;
endfunction
h = 6.626e-034;    // Planck's constant, Js
e = 1.6e-019;    // The energy equivalent of 1 eV, J
c = 3e+008;    // Speed of light in vacuum, m/s
V = 50e+003;    // Operating voltage of X ray, V
lambda_min = h*c/(e*V);    // Minimum wavelength of emitted continuous X rays, angstrom
n = 1;    // Order of diffraction
d = 3.02945e-010;    // Interplanar spacing, m
theta = asind(n*lambda_min/(2*d));    // The smallest angle between the crystal plane and the X ray beam, degree
[deg , m] = deg2degmin(theta);
printf("\nThe smallest angle between the crystal plane and the X ray beam = %d degree %d min", deg, m);

// Result
// The smallest angle between the crystal plane and the X ray beam = 2 degree 21 min 