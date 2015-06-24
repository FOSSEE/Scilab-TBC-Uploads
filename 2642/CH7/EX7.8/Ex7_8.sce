// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 7 : THREE-PHASE INDUCTION MOTOR
// Example : 7.8

clc;clear; // clears the console and command history 

// Given data
v_s = 120      // train speed in km/h
f = 50         // frequency in Hz

// caclulations 
v_s = 120*1000/(60*60)    // train speed in m/s
w = v_s/(2*f)             // length of the pole-pitch in m

// display the result 
disp("Example 7.8 solution");
printf(" \n Length of the pole-pitch lenear induction motor \n w = %.2f m \n", w );



