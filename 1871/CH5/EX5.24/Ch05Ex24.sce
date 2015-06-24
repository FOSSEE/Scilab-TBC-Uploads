// Scilab code Ex5.24: Pg:232 (2008)
clc;clear;
Lambda = 5000e-08;    //Mean wavelength of light, cm
theta = 10e-03;    // Smallest angular separation resolvable by a telescope objective, degree
theta = %pi/180*(1/1000);    // The smallest angular separation resolvable by a telescope objective, radian
// As theta = (1.22*Lambda)/a, solving for a
a = 1.22*Lambda/theta;    // Diameter of an objective of the telescope, cm
printf("\nThe diameter of an objective of the telescope = %3.1f cm", a);

// Result 
// The diameter of an objective of the telescope = 3.5 cm 