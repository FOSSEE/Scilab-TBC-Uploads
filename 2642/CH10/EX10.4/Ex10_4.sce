// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 10 : SYNCHRONOUS MOTOR
// Example : 10.4

clc;clear; // clears the console and command history 

// Given data
P = 4 // number of poles
f = 50 // supply frequency in Hz
V_t = 1500 // terminal voltage per phase in V
E_f = 1000 // excitation voltage per phase in V
Z_s = 12 // synchronnous impedance in ohm
R_a = 1.5 //armature resistance in ohm

// caclulations
P_dm = (((E_f*V_t)/Z_s)-((E_f^2*R_a)/Z_s^2)) // maximum power per phase in W
T_dm = 9.55*P_dm/1500 // maximum torque in N-m

// display the result  
disp("Example 10.4 solution"); 
printf(" \n Maximum power developed \n P_dm = %.0f W \n", P_dm );
printf(" \n Maximum toruqe \n T_dm = %.1f N-m \n", T_dm );
