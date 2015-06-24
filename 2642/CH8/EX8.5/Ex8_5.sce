// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 8 : STARTING, CONTROL AND TESTING OF AN INDUCTION MOTOR
// Example : 8.5

clc;clear; // clears the console and command history 

// Given data
V = 210      // supply voltage in V
f = 50       // supply frequency in Hz
P = 50       // i/p power in W
I_br = 2.5   // line current in A
V_br = 25    // line voltgae
R_1 = 2.4    // resistance between two resistance in ohm

// caclulations 
V_br = V_br/sqrt(3)        // phase voltage
P_br = P/3                 // power per phase in W
R_eq = P_br/I_br^2         // equivalent resistance in ohm
R_2 = R_eq-(R_1/2)         // per phase rotor resistance in ohm
Z_eq = V_br/I_br           // equivalent impedance in ohm
X_eq = sqrt(Z_eq^2-R_2^2)  // equivalent reactance in ohm
X_1 = 0.5*X_eq

// display the result 
disp("Example 8.5 solution"); 
printf(" \n Equivalent resistance \n R_eq = %.1f ohm \n", R_eq );
printf(" \n Equivalent reactance \n X_eq = %.1f ohm \n", X_eq );
printf(" \n Equivalent reactance \n X_1 = %.1f ohm \n", X_1 );

