// Scilab Code Ex4.18: : Page-4.34 (2009)
clc; clear;
theta = 15.2;   // Angle through which plane of polarization is rotated, degrees
S = 65;     // Specific rotation of sugar solution, degrees
l = 15;     // Length of sugar, cm
// As S = 10*theta/(l*c), solving for c
c = 10*theta/(l*S);     // Concentration of sugar, g/cc

printf("\nThe strength of sugar solution = %4.2f g/cc", c);

// Result 
// The strength of sugar solution = 0.16 g/cc 

 
