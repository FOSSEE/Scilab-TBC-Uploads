// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 7 : THREE-PHASE INDUCTION MOTOR
// Example : 7.5

clc;clear; // clears the console and command history 

// Given data
V = 440     // supply voltage in V
P = 4       // number of poles
P_ag = 1500 // rotor i/p in kW
P_rcu = 250 // copper loss in W
f = 50      // frequency in Hz

// caclulations 
s = P_rcu/P_ag       // slip
N_s = 120*f/P        // synchronous speed in rpm
N_l = (1-s)*N_s      // rotor maximum speed in rpm
P_mech = (1-s)*P_ag  // mechanical power developed in W

// display the result 
disp("Example 7.5 solution");
printf(" \n Slip \n s = %.3f \n", s);
printf(" \n Synchronous speed \n N_s = %.f rpm \n", N_s);
printf(" \n Rotor speed \n N_l = %.0f rpm \n", N_l);
printf(" \n Mecahnical power developed \n P_mech = %.0f W \n", P_mech);

// NOTE : small change in answer instead 1245 got 1250W
