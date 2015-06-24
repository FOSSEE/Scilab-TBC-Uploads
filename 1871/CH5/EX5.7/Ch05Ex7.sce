// Scilab code Ex5.7:  Pg:217 (2008)
clc;clear;
// Define function to convert degrees to degree and minute
function [deg, minute] = deg2degmin(theta)
    deg = floor(theta);
    minute = ceil((theta-deg)*60);
endfunction
Lambda = 5e-05;    // Wavelength of spectral line, cm
n = 1;    // First order principal maxima 
aplusb = 3/15000;    // Grating element where a is the width of slit and b is the width of opaque region in a grating, cm
// Since (a +b)*sint_theta = n*Lambda, solving fot theta
theta = asind((n*Lambda/aplusb));    // Angle of diffraction in first order, minutes
[d, m] = deg2degmin(theta);
printf("\nThe angle of diffraction in first order = %2d degree %2d minutes", d, m);

// Result 
// The angle of diffraction in first order = 14 degree 29 minutes