// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 9 : SYNCHRONOUS GENERATOR
// Example : 9.3

clc;clear; // clears the console and command history 

// Given data
P = 4  // number of poles
m = 3  // number of phase 
S = 40 // number of slots

// caclulations 
T_p = S/P             // pole pitch interms of slots
T_c = 9-1             // coil span 1 to 9 i.e. coil pitch in terms of slots
slots_1 = 180/T_p     // pole pitch per slots
y = T_p-T_c           // short pitch angle
y_angle = y*slots_1   // in terms of angle
k_p = cosd(y_angle/2) // pitch factor

// display the result 
disp("Example 9.3 solution"); 
printf(" \n Pitch factor is \n k_p = %.2f \n", k_p );


