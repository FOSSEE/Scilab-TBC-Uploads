// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.4
clc;clear; // clears the console and command history 

// Given data
N_1 = 450  // number of turns in the primary coil of transformer
N_2 = 45   // number of turns in the secondary coil of transformer
Z_L = 3    // load impedance in Ω
V_1 = 15   // primary coil voltage of transformer in V

// caclulations 
a = N_1/N_2   // turn ratio
Z_1 = a^2*Z_L // load impedance referred to primary ohm
I_1 = V_1/Z_1 // primary current in A


// display the result 
disp("Example 3.4 solution");
printf(" \n Turn ratio \n a = %.0f \n", a);
printf(" \n Load impedance referred to primary \n Z_1 = %.0f Ω \n", Z_1);
printf(" \n Primary current \n I_1 = %.2f A \n", I_1);
