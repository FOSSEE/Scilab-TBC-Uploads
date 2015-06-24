// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 4 : DIRECT CURRENT GENERATORS
// Example : 4.3


clc;clear; // clears the console and command history 

// Given data
l = 1.5    // length of conductor in m
v = 20     // speed in m/s
B = 0.9    // magnetic flux density in Wb/m^2
teta = 35  // angle of rotation in degree

// caclulations 
e = B*l*v*sind(teta) // induced voltage in V

// display the result 
disp("Example 4.3 solution");
printf(" \n Induced voltage \n e = %.1f V \n", e);

