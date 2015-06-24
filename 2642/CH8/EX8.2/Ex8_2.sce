// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 8 : STARTING, CONTROL AND TESTING OF AN INDUCTION MOTOR
// Example : 8.2

clc;clear; // clears the console and command history 

// Given data
T_ratio = 1/2    // T_st/T_f ratio of starting torque to full load torque
s_f = 0.03      // full load slip
I_ratio = 5     // I_sc/I_f ratio pf short circuit current to full load current

// caclulations 
x = (1/I_ratio)*sqrt(T_ratio*(1/s_f)) // percentage of tapping

// display the result 
disp("Example 8.2 solution");
printf(" \n Percentage of tapping \n x = %.3f \n", x );



