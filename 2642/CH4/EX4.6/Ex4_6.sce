// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 4 : DIRECT CURRENT GENERATORS
// Example : 4.6


clc;clear; // clears the console and command history 

// Given data
V_t = 220    // shunt generator voltage in V
I = 250      // shunt generator current in A
R_sh = 50    // shunt field resistance in ohm
R_a = 0.02   // armature resistance in ohm

// caclulations 
I_sh = V_t/R_sh   // shunt field current in A
I_a = I+I_sh      // armature current in A
E_g = V_t+I_a*R_a // generated voltage in V


// display the result 
disp("Example 4.6 solution");
printf(" \n Generated voltage \n E_g = %.2f V \n", E_g);

