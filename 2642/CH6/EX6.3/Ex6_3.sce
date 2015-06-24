// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 6 : CONTROL AND STARTING OF A DC MOTORS
// Example : 6.3

clc;clear; // clears the console and command history 

// Given data
V_t = 230    // supply voltage series motor in V
R_a = 0.2    // armature resistance in ohm
R_f = 0.2    // field resistance in ohm
I_a1 = 10    // dc series motor armature current in A
N = 1000     // speed in rpm
I_a2 = 8     // dc series motor armature current in A when R=2 ohm
R_2 = 2      //  series resistance in ohm
R_1 = 0      // series resistance in ohm
// phi2 = 0.8*phi1 
// phi1/phi2 = 1.25

// caclulations 
R_a1 = R_a+R_1            // new armature resistance in ohm
E_b1 = V_t-I_a1*R_a1      // back emf in V
R_a2 = R_a+R_2            // new armature resistance in ohm
E_b2 = V_t-I_a2*R_a2      // back emf in V
N_2 = (E_b2/E_b1)*1.25*N  // new speed in rpm 

// display the result 
disp("Example 6.3 solution");
printf(" \n New speed \n N_2 = %.1f rpm \n", N_2);
