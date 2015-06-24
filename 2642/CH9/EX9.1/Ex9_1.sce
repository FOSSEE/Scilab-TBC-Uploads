// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 9 : SYNCHRONOUS GENERATOR
// Example : 9.1

clc;clear; // clears the console and command history 

// Given data
N = 300     // speed of water turbine in rpm
f = 50      // frequency in Hz

// caclulations 
P = 120*f/N // number of poles

// display the result 
disp("Example 9.1 solution"); 
printf(" \n Number of poles of the generator \n P = %.0f poles \n", P );


