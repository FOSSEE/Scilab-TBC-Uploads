// Scilab code Ex6.8: Pg:250 (2008)
clc;clear;
// Define function to convert degrees to degree and minute
function [deg, minute] = deg2degmin(theta)
    deg = floor(theta);
    minute = ceil((theta-deg)*60);
endfunction
C = 48;    // Critical angle of incidence, degree
mu = 1/sind(C);    // Index of refraction
// From Brewester's law mu = tan i_p, solving for i_p
i_p = atand(mu);    // Polarizing angle, degree
// Since i_p + r = %pi/2, solving for r
r = 90 - i_p;    // Angle of refraction, degree
[d1, m1] = deg2degmin(i_p);
[d2, m2] = deg2degmin(r);
printf("\nThe polarizing angle = %2d degree %2d minute", d1, m1);
printf("\nThe angle of refraction = %2d degree %2d minute", d2, m2);

// Result 
// The polarizing angle = 53 degree 23 minute
// The angle of refraction = 36 degree 38 minute