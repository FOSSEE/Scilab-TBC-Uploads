// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 5 : DIRECT CURRENT MOTORS 
// Example : 5.4 

clc;clear; // clears the console and command history 
// Given data 
I = 40;      // current in A 
V_t = 230;   // supply in V
N = 1100;    // speed in rpm
R_a = 0.25;  // armature resistance in Ω
R_sh = 230;  //shunt resistance in Ω 


// caclulations 
I_sh = V_t/R_sh;       // shunt field current in A
I_a = I - 1;           // armature current in A
E_b = V_t - I_a*R_a;   // back emf 
T_a = 9.55*E_b*I_a/N;  //  amrature torque in N-m
 
 // display the result 
disp("Example 5.4 solution");
printf("\n The armature torque is \n T_a = %.2f N-m ",T_a ); 
