// Scilab code Ex4.30 : Pg:180 (2008)
clc;clear;
Lambda = 6000e-08;    // Wavelength of light, cm
d = 0.005;    // Diameter of wire, mm
x = 15;    // Distance between the glass plates, cm
theta = d/x;    // Angle of the wedge, degree
omega = Lambda/(2*theta);    // Fringe width in air wedge for normal incidence, cm
printf("\nThe fringe width in air-wedge for normal incidence = %4.2f cm", omega);

// Result 
// The fringe width in air-wedge for normal incidence = 0.09 cm