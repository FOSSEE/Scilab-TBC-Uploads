// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.16


clc;clear; // clears the console and command history 

// Given data
V_b = 220   // voltage in V
f = 50      // frequency in Hz
S_b = 600   // power ratings
R = 3       // resistance in ohm
X_L = 5     // inducatnce in ohm
Z = R+X_L   // impedance

// caclulations 
I_b = S_b/V_b         // base value of current in A
Z_b = V_b^2/S_b       // base value of impedance in ohm
R_pu = R/Z_b          // per unit value of resistance in ohm
X_Lpu = X_L/Z_b       // per unit value of impedance in ohm
Z_pu = abs(Z)/Z_b     // per unit of value of impedance in ohm
Z_pu = R_pu+%i*X_Lpu  // per unit of value of impedance in ohm NOTE:alternative                          method

// display the result 
disp("Example 3.16 solution");
printf(" \n Per unit value of resistance \n R_pu = %.3f ohm \n", R_pu);
printf(" \n Per unit value of impedance \n X_Lpu = %.3f ohm \n", X_Lpu);
printf(" \n Per unit of value of impedance \n Z_pu = %.3f<%.f \n", abs(Z_pu),atand(imag(Z_pu),real(Z_pu)));

