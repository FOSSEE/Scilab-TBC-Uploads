// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 7 : THREE-PHASE INDUCTION MOTOR
// Example : 7.4

clc;clear; // clears the console and command history 

// Given data
f = 50        // frequency in Hz
P = 8         // number of poles
a = 0.03      // full load slip
R_2 = 0.01    // rotor resistance in ohm
X_2 = 0.1     // standstill resistance in ohm

// caclulations 
N_s = 120*f/P             // synchronous speed in rpm
s = R_2/X_2               // slip at maximum torque
N_l = (1-s)*N_s           // rotor maximum speed in rpm
T = (2*a*s)/(s^2+a^2)     // ratio of full load torque to maximum torque
T_ratio = 1/T             // ratio of maximum torque to full load torque
 
// display the result 
disp("Example 7.4 solution");
printf(" \n Rotor speed at maximum torque \n N_l = %.0f rpm \n", N_l);
printf(" \n Ratio of maximum torque to full load torque \n T_ratio = %.2f \n", T_ratio);

