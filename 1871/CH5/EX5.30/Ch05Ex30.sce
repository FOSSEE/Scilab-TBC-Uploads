// Scilab code Ex5.30: Pg:236 (2008)
clc;clear;
L_1 = 5e-05;    // Limit of resolution of microscope, cm
l = 25;    // Least distance of distiinct vision, cm
theta_1 = 1.5;    // Angular limit of resolution of eye, minute
theta_2 = theta_1/60*%pi/180;    // Angular limit of resolution of eye, radian
L_2 = l*theta_2;    // Linear limit of the resolution of eye, cm
M = L_2/L_1;    // Magnifying power of the microscope
printf("\nThe magnifying power of the microscope = %3d ", M);

// Result 
// The magnifying power of the microscope = 218   