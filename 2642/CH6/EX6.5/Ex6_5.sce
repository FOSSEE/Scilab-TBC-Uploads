// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 6 : CONTROL AND STARTING OF A DC MOTORS
// Example : 6.5

clc;clear; // clears the console and command history 

// Given data
V_t = 230         // shunt motor supply voltage in V
R_a = 0.4         // armature resistance in ohm
I_a = 30          // armature current in A
n = 3             // number of steps

// caclulations 
R_1 = V_t/I_a        // maximum value of current in ohm
k = (R_1/R_a)^(1/3)  // constant
R_2 = R_1/k          // other value of resistance in ohm
R_3 = R_2/k          // other value of resistance in ohm
R_4 = R_3/k          // other value of resistance in ohm
R_1step = R_1-R_2    // resistance of the 1st step in ohm
R_2step = R_2-R_3    // resistance of the 1st step in ohm
R_3step = R_3-R_4    // resistance of the 1st step in ohm

// display the result 
disp("Example 6.5 solution");
printf(" \n resistance of the 1st step in ohm \n R_1step = %.1f ohm \n", R_1step);
printf(" \n resistance of the 2nd step in ohm \n R_2step = %.1f ohm \n", R_2step);
printf(" \n resistance of the 3rd step in ohm \n R_3step = %.2f ohm \n", R_3step);
