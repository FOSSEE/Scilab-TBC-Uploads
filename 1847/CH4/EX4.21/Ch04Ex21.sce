// Scilab Code Ex4.21:: Page-4.35 (2009)
clc; clear;
m = 15;     // Amount of sugar, g
S = 66; // Specific rotation of sugar solution from the given data, degrees
l = 20;     // Length of the tube, cm
V = 100;     // Volume of sugar solution, cc
c = m/V;     // Concentration of sugar, g/cc
// As S = 10*theta/(l*c), solving for theta
theta = S*l*c/10;       // Angle of rotation of the plane of polarization, degrees

printf("\nThe angle of rotation of the plane of polarization = %4.1f degrees", theta);

// Result 
// The angle of rotation of the plane of polarization = 19.8 degrees 

 
