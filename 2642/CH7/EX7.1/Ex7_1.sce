// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 7 : THREE-PHASE INDUCTION MOTOR
// Example : 7.1

clc;clear; // clears the console and command history 

// Given data
V = 230      // supply voltage in V
P = 4       // number of poles
f = 50      // frequecny Hz
N_l = 1445  // speed in rpm

// caclulations 
N_s = 120*f/P      // synchronous speed in rpm
s = (N_s-N_l)/N_s  // slip
f_r = s*f          // rotor frequency in Hz

// display the result 
disp("Example 7.1 solution");
printf(" \n Synchronous speed \n N_s = %.1f rpm \n", N_s);
printf(" \n Slip \n s = %.4f \n", s);
printf(" \n Rotor frequency \n f_r = %.1f Hz \n", f_r);

