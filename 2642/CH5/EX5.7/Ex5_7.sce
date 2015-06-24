// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 5 : DIRECT CURRENT MOTORS
// Example : 5.7

clc;clear; // clears the console and command history 

// Given data
I_a1 = 65     // supply current to dc series motor in A
V_t = 230     // supply voltage in V
N_1 = 900     // speed in rpm
R_a = 0.2     // armature resistance in ohm
R_sh = 0.25   // field resistance in ohm
I_a2 = 15     // supply current to dc series motor in A
// phi_2 = 0.4*phi_1 value of flux


// caclulations 
E_b1 = V_t-I_a1*(R_a+R_sh)     // initial back emf in V
E_b2 = V_t-I_a2*(R_a+R_sh)     // final back emf in V
// phi_2 = 0.4*phi_1 value of flux
N_2 = (E_b2/E_b1)*(2.5)*N_1    // motor speed when line current is 15A in rpm

// display the result 
disp("Example 5.7 solution");
printf(" \n motor speed when line current is 15A \n N_2 = %.0f rpm \n", N_2 );

printf(" NOTE: in question they given I_a1=56A , but in solution they took I_a1=65A");
