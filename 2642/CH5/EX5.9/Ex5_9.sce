// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 5 : DIRECT CURRENT MOTORS
// Example : 5.9

clc;clear; // clears the console and command history 

// Given data
I_L= 80          // dc shunt motor current in A
V_t = 220        // supply voltage in V
N = 800          // speed in rpm
R_a = 0.1        // armature resistance in ohm
R_sh = 50        // shunt field resistance in ohm
P_if = 1600      // iron and friction losses in W

// caclulations 
I_sh = V_t/R_sh        // shunt field current in A
I_a = I_L-I_sh         // armature current
E_b = V_t-I_a*R_a      // back emf in V
P_in = V_t*I_L         // i/p power in W
P_md = E_b*I_a         // mechanical power developed in the armature in W
P_cu = P_in-P_md       // copper loss in W
T_a = 9.55*(E_b*I_a)/N // armature torque in N-m
P_0 = P_md-P_if        // o/p power in W
T_sh = 9.55*(P_0/N)    // shaft torque in N-m
n= (P_0/P_in)*100      // efficiency 

// display the result 
disp("Example 5.9 solution");
printf(" \n Copper loss \n P_cu = %.2f W \n", P_cu);
printf(" \n Armature torque \n T_a = %.2f N-m \n", T_a);
printf(" \n Shaft torque \n T_sh = %.2f N-m \n", T_sh);
printf(" \n Efficiency \n n = %.0f percent \n", n);

