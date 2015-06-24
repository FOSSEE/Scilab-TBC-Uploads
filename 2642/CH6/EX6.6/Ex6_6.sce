// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 6 : CONTROL AND STARTING OF A DC MOTORS
// Example : 6.6

clc;clear; // clears the console and command history 

// Given data
V_t = 220      // shunt motor supply voltage in V
P_0 = 3550     // o/p power in W 
n = 0.85       // efficiency
// condition given : starting current of the motor should not exceed twice the load current

// caclulations 
P_in = P_0/n          // i/p power in W
P_tloss = P_in-P_0    // total loss in W
I_a = P_in/V_t        // neglet the field current then armature current in A
P_cu = P_tloss/2      // copper loss in W
R_a = P_cu/I_a^2      // armature resistance in ohm
I_1 = 2*I_a           // maximum starting current in A
R_1 = V_t/I_1         // maximum resistance in ohm
k = (R_1/R_a)^(1/4)   // constant
R_2 = R_1/k           // other value of resistance in ohm
R_3 = R_2/k           // other value of resistance in ohm
R_4 = R_3/k           // other value of resistance in ohm
R_5 = R_4/k           // other value of resistance in ohm
R_1step = R_1-R_2     // resistance of the 1st step in ohm
R_2step = R_2-R_3     // resistance of the 1st step in ohm
R_3step = R_3-R_4     // resistance of the 1st step in ohm
R_4step = R_4-R_5     // resistance of the 1st step in ohm

// display the result 
disp("Example 6.6 solution");
printf(" \n resistance of the 1st step in ohm \n R_1step = %.1f ohm \n", R_1step);
printf(" \n resistance of the 2nd step in ohm \n R_2step = %.2f ohm \n", R_2step);
printf(" \n resistance of the 3rd step in ohm \n R_3step = %.2f ohm \n", R_3step);
printf(" \n resistance of the 4th step in ohm \n R_3step = %.2f ohm \n", R_4step);
