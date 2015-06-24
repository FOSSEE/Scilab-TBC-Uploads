// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 7 : THREE-PHASE INDUCTION MOTOR
// Example : 7.2

clc;clear; // clears the console and command history 

// Given data
E_BR = 120    // voltage found under blocked condition in V
P = 4        // number of poles
f = 50       // frequecny in Hz
N_l = 1450   // speed in rpm

// caclulations 
N_s = 120*f/P     // synchronous speed in rpm
s = (N_s-N_l)/N_s // slip
f_r = s*f         // rotor frequency in Hz
E_r = s*E_BR      // Rotor voltage in V

// display the result 
disp("Example 7.2 solution");
printf(" \n Synchronous speed \n N_s = %.1f rpm \n", N_s);
printf(" \n Slip \n s = %.3f \n", s);
printf(" \n Rotor frequency \n f_r = %.2f Hz \n", f_r);
printf(" \n Rotor voltage \n E_r = %.2f V \n", E_r);

