// Scilab Code Ex3a.a.4: Page-134 (2008)
clc; clear;
R = 6.4e+006;    // Radius of the earth, m
g = 10;    // Acceleration due to gravity, m/sec-square
T = 2*%pi*sqrt(R/g);    // Time period of oscillations of the body, s
printf("\nThe time period of oscillations of the body = %4.1f min", T/60);

// Result
// The time period of oscillations of the body = 83.8 min 