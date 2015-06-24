// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 5 : DIRECT CURRENT MOTORS
// Example : 5.5

clc;clear; // clears the console and command history 

// Given data
P = 6          // number of poles
V_t = 230      // supply to shunt motor in V
Z = 450        // number of conductors
R_a = 0.8      // armature resistance in ohm
I = 30          // supply current in A
P_0 = 5560      // out put power in W
I_F = 3         // current through field winding
phi = 25*10^-3  // flux per pole in Wb

// caclulations 
A = 6                    // for lap wond A=P
I_a = I-I_F              // armature current in A
E_b = V_t-I_a*R_a        // back emf in V
N = 60*A*E_b/(P*Z*phi)   // speed in rpm
T_sh = 9.55*P_0/N        // shaft torque in N-m

// display the result 
disp("Example 5.5 solution");
printf(" speed \n N = %.1f rpm \n", N );
printf(" shaft torque \n T_sh = %.1f N-m \n", T_sh );
