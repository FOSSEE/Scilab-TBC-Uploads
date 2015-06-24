// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 7 : THREE-PHASE INDUCTION MOTOR
// Example : 7.3

clc;clear; // clears the console and command history 

// Given data
V_0 = 230 // supply voltage in V
P = 4     // number of poles
T_0 = 230 // original torque in N-m
V_s = 150 // stator voltage in V
I_0 = 560 // starting cuurent in A

// caclulations 
T_st = (V_s/V_0)^2*T_0 // starting torque in N-m
I_st = I_0*(V_s/V_0)   // starting current in A

// display the result 
disp("Example 7.3 solution");
printf(" \n Starting torque \n T_st = %.1f N-m \n", T_st);
printf(" \n Starting current \n I_st = %.1f A \n", I_st);
