// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 9 : SYNCHRONOUS GENERATOR
// Example : 9.2

clc;clear; // clears the console and command history 

// Given data
P = 8     // number of poles
m = 3     // number of phase 
S = 144   // number of slots

// caclulations 
T_p = S/P         // pole pitch interms of slots
slots_1 = 180/T_p // pole pitch per slots
y = 2*slots_1     // short pitch angle in degree
k_p = cosd(y/2)   // pitch factor

// display the result 
disp("Example 9.2 solution"); 
printf(" \n Pitch factor is \n k_p = %.2f \n", k_p );


