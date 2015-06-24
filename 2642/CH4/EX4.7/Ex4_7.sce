// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 4 : DIRECT CURRENT GENERATORS
// Example : 4.7


clc;clear; // clears the console and command history 

// Given data
E = 25 // power of compound generator in kW
V_t = 220 // terminal voltage in V
R_se = 0.05    // series resistance in ohm
R_sh = 55    // shunt field resistance in ohm
R_a = 0.07   // armature resistance in ohm
brush_drop = 1 // voltage drop per brush in V

// caclulations 
I_L = E*10^3/V_t // load current in A
I_sh1 = V_t/R_sh // shunt field current in A
I_a1 = I_sh1+I_L // armature current in A
E_g1 = V_t+I_a1*(R_a+R_se)+2*brush_drop // generator voltage in V
V_ab = V_t+I_L*R_se // voltage across the shunt field in V for short shunt generator
I_sh2 = V_ab/R_sh // current in the shunt field in A for short shunt generator
I_a2 = I_sh2+I_L // armature current in A for short shunt generator
E_g2 = V_ab+I_a2*R_a+2*brush_drop // generator voltage in V for short shunt generator

// display the result 
disp("Example 4.7 solution");
printf(" \n Generated emf when generatar is connected in long shunt \n E_g1 = %.f V \n", E_g1);
printf(" \n Generated emf when generatar is connected in short shunt \n E_g2 = %.1f V \n", E_g2);

