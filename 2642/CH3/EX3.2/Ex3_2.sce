// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.2
clc;clear; // clears the console and command history 

// Given data
V_1 = 220 // voltage in V
N_1 = 150 // number of turns in the primary coil of transformer
N_2 = 300 // number of turns in the secondary coil of transformer
f = 50    // frequency in Hz

// caclulations 
a = N_1/N_2               // turn ratio
phi_m = V_1/(4.44*f*N_1) // mutual flux in Wb

// display the result 
disp("Example 3.2 solution");
printf(" \n Mutual flux \n phi_m = %.2e Wb \n", phi_m);
