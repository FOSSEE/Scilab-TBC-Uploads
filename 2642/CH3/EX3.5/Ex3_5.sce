// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.5
clc;clear; // clears the console and command history 

// Given data
V_1 = 400      // primary voltage of transformer in V
V_2 = 100      // secondary voltage of transformer in V
I_0 = 0.4      // no-load current in A
I_2 = 100      // load draws current in A
cos_phi0 = 0.3 // power factor lagging from the supply
cos_phi2 = 0.6 // power factor lagging from the secondary

// caclulations 
phi0 = acosd(0.3)
phi2 = acosd(0.6)
phi1 = phi0-phi2 
a = V_1/V_2  // turn ratio
I_2! = I_2/a // secondary current equivalent to the primary 
I_1 = sqrt((I_2!^2)+(I_0^2)+(2*I_2!*I_0*cosd(19.4))) // primary current in A

// display the result 
disp("Example 3.5 solution");
printf(" \n Primary current \n I_1 = %.2f A \n", I_1);
