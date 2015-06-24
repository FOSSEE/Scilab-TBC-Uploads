// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.1
clc;clear; // clears the console and command history 

// Given data
V_1 = 2200  // primary voltage of transformer in V
V_2 = 220   // secondary voltage of transformer in V
N_2 = 56    // number of turns in the secondary coil of transformer
kVA = 25    // kVA rating of transformer

// caclulations 
a = V_1/V_2         // turn ratio
N_1 = a*N_2         // number of primary turns 
I_1 = kVA*10^3/V_1  // primary full load current in A
I_2 = kVA*10^3/V_2  // secondary full load current in A

// display the result 
disp("Example 3.1 solution");
printf(" \n Number of primary turns \n N_1 = %.0f \n", N_1);
printf(" \n Primary full load current \n I_2 = %.2f A \n", I_1);
printf(" \n Secondary full load current \n I_2 = %.1f A \n", I_2);
