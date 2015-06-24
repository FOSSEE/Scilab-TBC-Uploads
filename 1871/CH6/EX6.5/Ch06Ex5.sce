// Scilab code Ex6.5: Pg:249 (2008)
clc;clear;
// Define function to convert degrees to degree and minute
function [deg, minute] = deg2degmin(theta)
    deg = floor(theta);
    minute = ceil((theta-deg)*60);
endfunction
I_m = 1;    // For simplicity assume maximum intensity to be unity, unit
I0 = I_m;    // Initial intensity, unit
I = I_m/3;    // Final intensity, unit
// From Malus' Law. I = I0*cosd(theta)^2, solving for theta
theta = acosd(sqrt(I/I0));    // The angle between two polarizing sheets, degree
[d1, m1] = deg2degmin(theta);    // Call conversion function
[d2, m2] = deg2degmin(180-theta);    // Call conversion function for supplement
printf("\nThe angle between two polarizing sheets = %2d degree %2d minute = %2d degree %2d minute", d1, m1, d2, m2);

// Result 
// The angle between two polarizing sheets = 54 degree 45 minute = 125 degree 16 minute
// The answer is given wrongly in the textbook