// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 2 : BESICS OF MAGNETIC CIRCUITS 
// Example : 2.11
clc;clear; // clears the console and command history 

// Given data
I = 150  // current through conductor in A
l = 2    // conductor length in m
B = 0.35 // magnetic flux density in T

// caclulations 
F = B*l*I // force in N

// display the result 
disp("Example 2.11 solution");
printf("\n Force \n F = %.0f N \n", F);

