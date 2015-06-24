// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 4 : DIRECT CURRENT GENERATORS
// Example : 4.11

clc;clear; // clears the console and command history 

// Given data
P = 4             // number of poles
I_L = 25          // generator delivering current in A
V_t = 230         // generator terminal voltage in V
R_a = 0.2         // armature resistance in ohm
R_sh = 55         // shunt field resistance in ohm
brush_drop = 1    // brush drop in V

// caclulations 
I_sh = V_t/R_sh              // shunt field current in A
I_a = I_L+I_sh               // armature current in A
E_g = V_t+I_a*R_a+brush_drop // induced voltage in V
P_arm = E_g*I_a              // power generated in armature in W
P_L = V_t*I_L                // power absorbed by load in W
n = (P_L/P_arm)*100          // efficiency

// display the result 
disp("Example 4.11 solution");
printf(" \n Induced voltage \n E_g = %.1f V \n", E_g );
printf(" \n Efficiency \n n = %.1f percent \n", n );
