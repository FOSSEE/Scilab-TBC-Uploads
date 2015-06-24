// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 8 : STARTING, CONTROL AND TESTING OF AN INDUCTION MOTOR
// Example : 8.3

clc;clear; // clears the console and command history 

// Given data
T_ratio = 0.25    // T_st/T_f ratio of starting torque to full load torque
I_ratio = 3.6     //  I_sc/I_f ratio pf short circuit current to full load current
                  // since given I_sc = 3*1.2*I_f

// caclulations 
s_f = T_ratio*3/(I_ratio)^2 // full load slip

// display the result 
disp("Example 8.3 solution"); 
printf(" \n Full load slip \n s_f = %.2f \n", s_f );



