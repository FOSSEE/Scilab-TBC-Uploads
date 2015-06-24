// Scilab Code Ex4.20:: Page-4.35 (2009)
clc; clear;
theta = 8;   // Angle through which plane of polarization is rotated, degrees
M = 10;     // Amount of sugar, g
l = 14;     // Length of the tube, cm
V = 44;     // Volume of sugar solution, cc
c = M/V;     // Concentration of sugar, g/cc
S = 10*theta/(l*c); // Specific rotation of sugar solution from the given data, degrees

printf("\nThe specific rotation of sugar solution from the given data = %4.1f degrees", S);

// Result 
// The specific rotation of sugar solution from the given data = 25.1 degrees 

 
