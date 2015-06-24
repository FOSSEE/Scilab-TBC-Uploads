// Scilab code Ex5.2: : Pg:207 (2008)
clc;clear;
// Define function to convert degrees to degree and minute
function [deg, minute] = deg2degmin(theta)
    deg = floor(theta);
    minute = ceil((theta-deg)*60);
endfunction
a = 22e-05;    // Width of slit, cm
Lambda = 5500e-08;    // Wavelength of light, cm
// Since a*sin(theta) = n*Lambda, solving for sin(theta_1)
n = 1;    // First order minimum
theta_1 = asind(n*Lambda/a);    // Angular position of first order minimum, degree
[d1, m1] = deg2degmin(theta_1);     // Transformtion function
n = 2;    // Second order minimum
theta_2 = asind(n*Lambda/a);    // Angular position of second order minimum, degree
[d2, m2] = deg2degmin(theta_2);     // Transformtion function
printf("\nThe angular position of first order minima = %d degree %d minute", d1, m1);
printf("\nThe angular position of second order minima = %d degree %d minute", d2, m2);

// Result 
// The angular position of first order minima = 14 degree 29 minute
// The angular position of second order minima = 30 degree 1 minute 