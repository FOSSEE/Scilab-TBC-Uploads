// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 11 : SINGLE-PHASE MOTORS
// Example : 11.6

clc;clear; // clears the console and command history 

// Given data
r_t = 36 // rotor teeth of stepper motor
N = 4    // stator phases

// caclulations
T_p = 360/r_t      // tooth pitch
teta = 360/(N*r_t) // step angle

// display the result  
disp("Example 11.6 solution"); 
printf(" \n Tooth pitch \n T_p = %.0i degree \n", T_p );
printf(" \n Strp angle \n teta = %.1f degree \n", teta );

