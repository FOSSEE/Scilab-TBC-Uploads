// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 9 : SYNCHRONOUS GENERATOR
// Example : 9.4

clc;clear; // clears the console and command history 

// Given data
P = 4   // number of poles
S = 48  // number of slots

// caclulations 
T_p = S/P                                     // pole pitch interms of slots
slots_1 = 180/T_p                             // pole pitch per slots
n = S/(P*3)                                 // number of slots or coils per pole per phase
k_d = sind((n*slots_1)/2)/(n*sind(slots_1/2)) // distribution factor

// display the result 
disp("Example 9.4 solution"); 
printf(" \n Distribution factor is \n k_d = %.2f \n", k_d );


