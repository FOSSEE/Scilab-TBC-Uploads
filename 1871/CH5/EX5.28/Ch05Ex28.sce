// Scilab code Ex5.28: Pg:236 (2008)
clc;clear;
Lambda = 5500e-08;    // Wavelength of the visible light, cm
theta = 30;    // Semi-angle of the cone of light, degree
x = 1.22*Lambda/(2*sind(theta));    // Distance between the two nearby objects just resolved by the microscope, cm
printf("\nThe resolving limit of the microscope = %3.1e cm", x);

// Result 
// The resolving limit of the microscope = 6.7e-005 cm