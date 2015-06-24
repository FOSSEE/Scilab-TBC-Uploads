// Scilab Code Ex5.39: Page:315 (2011)
clc;clear;
theta = 11;....// Optical rotation of sugar solution, degrees
l = 20;....// Length of the tube, cm
S = 66;....// Specific rotation of sugar solution, degrees
c = theta*10/(l*S);    // The concentration of sugar solution, g/cc
printf("\nThe strength of the solution = %6.4f g/cc", c);

// Result
// The strength of the solution = 0.0833 g/cc 
