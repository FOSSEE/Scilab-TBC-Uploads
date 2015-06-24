// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 6 : CONTROL AND STARTING OF A DC MOTORS
// Example : 6.1

clc;clear; // clears the console and command history 

// Given data
V_t = 220    // supply voltage in V
I_a1 = 10    // dc shunt motor armature current in A
N_1 = 900    // speed in rpm
R_a = 1      // armature resistance in ohm
N_2 = 500    // speed in rpm

// caclulations 
E_b1 = V_t-I_a1*R_a           // initial back emf in V
R = (E_b1/10)*(1-(N_2/N_1))   // additional value of resistance in ohm

// display the result 
disp("Example 6.1 solution");
printf(" \n additional value of resistance \n R = %.1f ohm \n", R);


