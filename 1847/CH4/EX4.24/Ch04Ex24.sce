// Scilab Code Ex4.24:: Page-4.36 (2009)
clc; clear;
l = 17;     // Length of the tube, cm
V = 37;     // Volume of sugar solution, cc
theta = 15;       // Angle of rotation of the plane of polarization, degrees
S = 68;         // Specific rotation of sugar solution, degrees
// As S = 10*theta/(l*c), solving for c
c = 10*theta/(l*S);     // Concentration of sugar solution, g/cc
m = c*V;        // Mass of sugar in the solution contained in the tube, g

printf("\nThe mass of sugar in the solution contained in the tube = %3.1f g", m);

// Result 
// The mass of sugar in the solution contained in the tube = 4.8 g 

 
