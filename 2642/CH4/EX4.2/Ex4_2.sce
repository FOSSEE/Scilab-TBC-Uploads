// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 4 : DIRECT CURRENT GENERATORS
// Example : 4.2


clc;clear; // clears the console and command history 

// Given data
l = 0.65 // length of conductor in m
v = 35   // speed in m/s
B = 0.8  // magnetic flux density in T

// caclulations 
e = B*l*v // induced voltage in V

// display the result 
disp("Example 4.2 solution");
printf(" \n Induced voltage \n e = %.1f V \n", e);

