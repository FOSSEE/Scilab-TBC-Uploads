// Scilab Code Ex4.22: : Page-4.35 (2009)
clc; clear;
l = 5;     // Length of the tube, dm
m = 50;     // Amount of sugar, g
S = 50; // Specific rotation of sugar solution, degrees
V = 150;     // Volume of sugar solution, cc
c = m/V;     // Concentration of sugar, g/cc
// As S = theta/(l*c), solving for theta
theta = S*l*c;       // Angle of rotation of the optically active solution

printf("\nThe angle of rotation of the optically active solution = %4.1f degrees", theta);

// Result 
// The angle of rotation of the optically active solution = 83.3 degrees 

 
