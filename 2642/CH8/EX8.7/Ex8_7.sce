// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 8 : STARTING, CONTROL AND TESTING OF AN INDUCTION MOTOR
// Example : 8.7

clc;clear; // clears the console and command history 

// Given data
P_1 = 6      // number of pole
P_2 = 4      // number of pole
f =50        // supply frequency in Hz
P = 60       // power in kW

// caclulations 
s = P_2/(P_1+P_2)        // combined slip
N_cs = 120*f/(P_1+P_2)   // combined synchronous speed in rpm
P_0 = P*(P_2/(P_1+P_2))  // o/p of 4-pole motor in kW

// display the result 
disp("Example 8.7 solution"); 
printf(" \n Combined slip \n s = %.1f  \n", s );
printf(" \n Combined synchronous speed \n N_cs = %.0f rpm \n", N_cs );
printf(" \n Out-power of 4-pole motor \n P_0 = %.f kW \n", P_0 );

