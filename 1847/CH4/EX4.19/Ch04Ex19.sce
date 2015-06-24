// Scilab Code Ex4.19:: Page-4.34 (2009)
clc; clear;
theta = 15;   // Angle through which plane of polarization is rotated, degrees
S = 69;     // Specific rotation of sugar solution, degrees
l = 10;     // Length of sugar, cm
V = 50;     // Volume of the tube, cc
// As S = 10*theta/(l*c), solving for c
c = 10*theta/(l*S);     // Concentration of sugar, g/cc
M = c*V;    // Mass of sugar in solution, g

printf("\nThe quantity of sugar contained in the tube in the form of solution = %5.2f g", M);

// Result 
// The quantity of sugar contained in the tube in the form of solution = 10.87 g 

 
