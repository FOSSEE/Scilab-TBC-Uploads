// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 6 : CONTROL AND STARTING OF A DC MOTORS
// Example : 6.2

clc;clear; // clears the console and command history 

// Given data
V_t = 230   // supply voltage in V
I_a1 = 15   // dc shunt motor armature current in A
N_1 = 650   // speed in rpm
R_a = 0.4   // armature resistance in ohm
R = 1       // variable resistance in series with the armature

// caclulations 
// at full load 
E_b1 = V_t-I_a1*R_a       // initial back emf in V
E_b2 = V_t-I_a1*(R+R_a)   // final back emf in V
N_2 = N_1*(E_b2/E_b1)     // speed at full load in rpm

// at half load
I_a21 = I_a1/2               // armature current in A
E_b21 = V_t-I_a21*(R+R_a)    // back emf in V
N_21 = N_1*(E_b21/E_b1)      // speed at half load torque in rpm



// display the result 
disp("Example 6.2 solution");
printf(" \n speed at full load \n N_2 = %.1f rpm \n", N_2);
printf(" \n speed at half load torque \n N_21 = %.1f rpm \n", N_21);

