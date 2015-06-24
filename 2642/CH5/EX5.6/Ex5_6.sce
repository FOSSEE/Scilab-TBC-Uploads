// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 5 : DIRECT CURRENT MOTORS
// Example : 5.6

clc;clear; // clears the console and command history 

// Given data
I_L1 = 5      // dc shunt motor current
V_t = 230     // terminal voltage in V
N_1 = 1000    // speed in rpm
R_a = 0.2     // armature resistance in ohm
R_F = 230     // field resistance in ohm
I_L2 = 30     // dc shunt motor current

// caclulations 
// at noload condition
I_sh = V_t/R_F         // shunt field current in A
I_a1 = I_L1-I_sh       // armature current in A
E_b1 = V_t-I_a1*R_a    // back emf in V
// under load condition
I_a2 = I_L2-I_sh       // armature current in A
E_b2 = V_t-I_a2*R_a    // back emf in V
N_2 = (E_b2/E_b1)*N_1   // motor speed under load condtion in rpm

// display the result 
disp("Example 5.6 solution");
printf(" \n Speed under load condition \n N_2 = %.1f rpm \n", N_2 );

