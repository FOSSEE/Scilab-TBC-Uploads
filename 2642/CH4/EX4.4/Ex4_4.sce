// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 4 : DIRECT CURRENT GENERATORS
// Example : 4.4


clc;clear; // clears the console and command history 

// Given data
P = 4       // number of poles
Z = 40*10   // number of conductors
phi = 0.02  // flux per pole in Wb
N = 1200    // speed in rpm

// caclulations 
A = P/2
E_g = (P*phi*Z*N)/(60*A) // generated voltage in V

// display the result 
disp("Example 4.4 solution");
printf("\n Generated voltage \n E_g = %.0f V \n", E_g);

