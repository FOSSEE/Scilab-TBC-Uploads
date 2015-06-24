// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 11 : SINGLE-PHASE MOTORS
// Example : 11.4

clc;clear; // clears the console and command history 

// Given data
V_t = 220      // supply voltage in V
f = 50         // frequency in Hz
Z_m = 4+%i*3.5 // main winding impedance of motor in ohm
Z_s = 5+%i*3   // starting impedance of motor in ohm
R_s = 5        // from Z_s
X_s = 3        // from Z_s

// caclulations
alpha_m = 41.2 // angle in degree from Z_m
// Let X_c be connected in series with the starting winding. Then the total impedance of starting winding is Z_s = Z_m-%i*X_c
// The torque will be the maximum when the angle between the starting winding and main winding currents in 90 electrical degree.The value of the angle of the starting winding current is
alpha_s = alpha_m-90
X_c = X_s-R_s*tand(alpha_s)
C = 1/(2*%pi*f*X_c) // starting capacitance to get maximum torque in F

// display the result  
disp("Example 11.4 solution"); 
printf(" \n Starting capacitance for getting maximum torque \n C = %.2e F \n", C );
