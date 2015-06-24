// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.3
clc;clear; // clears the console and command history 

// Given data
V_1 = 2200 // primary voltage of transformer in V
V_2 = 220  // secondary voltage of transformer in V
I_0 = 0.5  // no-load current in A
P_0 = 350  // absorbed power by transformer 

// caclulations 
phi = acos(.32)
sin_phi = sin(phi)
cos_phi = P_0/(V_1*I_0) // no-load power factor
I_w = I_0*cos_phi       // iron loss component of current A
I_m = I_0*sin_phi       // magnetizing component of current A


// display the result 
disp("Example 3.3 solution");
printf(" \n The iron loss component of current A \n I_w = %.2f A \n", I_w);
printf(" \n The magnetizing component of current A \n I_m = %.2f A \n", I_m);
