// Scilab Code Ex5.18: Page:305 (2011)
clc;clear;
function [deg, minute] = deg2degmin(theta)
    deg = int(theta);
    minute = (theta - deg)*60;
endfunction

lambda = 5.5e-007;....// Wavelength of light, m
a = 2.2e-006;....// Width of the slit, m
l = 6000;....// Lines /cm of the diffraction grating
// In a single slit diffraction pattern the directions of minimum intensity are given by a*sintheta = m*lambda where m = 1,2,3....
// For m = 1
m = 1;....// First order
theta = asind(m*lambda/a);    // Angular position of first minima on either side of the central maxima, degrees
[deg, minute] = deg2degmin(theta);    // Degree to deg-min conversion
printf("\nThe angular position of first minima on either side of the central maxima = %2d degrees %2d minutes", deg, minute);
// For m = 2
m = 2;....// Second order
theta = asind(m*lambda/a);
[deg, minute] = deg2degmin(theta);    // Degree to deg-min conversion
printf("\nThe angular position of second minima on either side of the central maxima = %2d degrees %2d minutes", deg, minute);

// Result
// 
