// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.11


clc;clear; // clears the console and command history 

// Given data
V_1 = 200  // voltage in V
f = 50     // frequency in Hz
I_0 = 0.6  // single phase current in A
P_0 = 80   // power in W

// caclulations 
cos_phi0 = P_0/(V_1*I_0) // power factor
sin_phi0 = 0.74          // from above expression
I_w = I_0*cos_phi0       // working component of no load current in A
I_m = I_0*sin_phi0       // working component of no load current in A
R_0 = V_1/I_w            // no load circuit resistance in ohm
X_0 = V_1/I_m            // no load circuit reactance in ohm

// display the result 
disp("Example 3.11 solution");
printf(" \n No-load circuit resistance \n R_0 = %.2f ohm \n", R_0);
printf(" \n No-load circuit reactance \n X_0 = %.1f ohm \n", X_0);
