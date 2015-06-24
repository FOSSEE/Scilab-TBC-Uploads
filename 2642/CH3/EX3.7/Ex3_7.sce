// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.7
clc;clear; // clears the console and command history 

// Given data
V_1 = 200      // primary voltage of transformer in V
V_2 = 400      // secondary voltage of transformer in V
R_1 = 0.3      // primary resistance in Ω
X_1 = 0.6      // primary reactance in Ω
R_2 = 0.8      // secondary resistance in Ω
X_2 = 1.6      // secondary reactance in Ω
I_2 = 10       // secondary supply current in A
cos_phi2 = 0.8 // power factor lagging

// caclulations 
a = V_1/V_2          // turn ratio
phi2 = acosd(0.8)
sin_phi2 = sind(phi2)
R_02 = R_2+(R_1/a^2) // total resistance referred to secondary side Ω
X_02 = X_2+(X_1/a^2) // total reactance referred to secondary side Ω
E_2 = (V_2*cos_phi2+I_2*R_02)+(%i*(V_2*sin_phi2+I_2*X_02)) // no-load voltage
V_r = (abs(E_2)-V_2)/V_2*100                              // voltage regulation

// display the result 
disp("Example 3.7 solution");
printf(" \n Voltage regulation \n V_r = %.0f percent \n", V_r);


