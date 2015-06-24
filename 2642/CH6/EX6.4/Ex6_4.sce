// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 6 : CONTROL AND STARTING OF A DC MOTORS
// Example : 6.4

clc;clear; // clears the console and command history 

// Given data
N = 1100         // speed of dc series motor in rpm
P = 4            // number of poles
I_a1 = 15        // supply current to dc series motor in A
V_t = 220        // supply voltage in V
R_a = 0.9        // series armature resistance in ohm
R_se1 = 0.6      // series field resistance in ohm
I_a2 = 25        // supply current to dc series motor in A
// phi2 = 0.8*phi1 
// phi1/phi2 = 1.25

// caclulations 
E_b1 = V_t-I_a1*(R_a+R_se1)    // back emf in V
R_se2 = 0.6/4                 // value of resistance per path in ohm
E_b2 = V_t-I_a2*(R_a+R_se2)   // back emf in V
N_2 = (E_b2/E_b1)*1.25*N      // new speed in rpm 

// display the result 
disp("Example 6.4 solution");
printf(" \n New speed \n N_2 = %.1f rpm \n", N_2);

