// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 2 : BESICS OF MAGNETIC CIRCUITS 
// Example : 2.13
clc;clear; // clears the console and command history 

// Given data
k_h = 110       // hysteresis co-efficient in J/m^3
V_cvol = 0.005  // volume of the core in m^3
B_m = 1.12      // flux density in T
f = 60          // frequency in Hz
n = 1.6

// caclulations 
P_h = k_h*V_cvol*B_m^n*f // hysteresis loss in W

// display the result 
disp("Example 2.13 solution");
printf(" \n Hysteresis loss \n P_h = %.2f W \n", P_h);

