// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 7 : THREE-PHASE INDUCTION MOTOR
// Example : 7.7

clc;clear; // clears the console and command history 

// Given data
V = 440         // supply voltage in V
P = 6           // number of poles
f = 50          // frequency in Hz
P_a = 45000     // i/p power
N_l = 900       // speed in rpm
P_tloss = 2000  // total power loss in W

// caclulations 
N_s = 120*f/P            // synchronous speed in rpm
s = (N_s-N_l)/N_s        // slip
P_ag = (P_a-P_tloss)     // air gap power in W
P_rcu = s*P_ag           // rotor copper loss in W
P_mech = P_ag-P_rcu      // mechanical power in W
P_0 = P_mech-3000        // o/p power in W
n = (P_0/P_ag)*100       // efficiency since n = P_o/P_in

// display the result 
disp("Example 7.7 solution");
printf(" \n Slip \n s = %.1f  \n", s );
printf(" \n Rotor copper loss  \n P_rcu = %.f W \n", P_rcu );
printf(" \n Out put power \n P_0 = %.f W \n", P_0 );
printf(" \n Efficiency  \n n = %.f percent \n", n );


