// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.6
clc;clear; // clears the console and command history 

// Given data
V_1 = 2000  // primary voltage of transformer in V
V_2 = 400   // secondary voltage of transformer in V
kVA = 200   // kVA rating of transformer
R_1 = 3     // primary resistance in Ω
X_1 = 12    // primary reactance in Ω
R_2 = 0.3   // secondary resistance in Ω
X_2 = 0.1   // secondary reactance in Ω

// caclulations 
a = V_1/V_2 // turn ratio
R_01 = R_1+(a^2*R_2)           // total resistance referred to primary side Ω
X_01 = X_1+(a^2*X_2)           // total reactance referred to primary side Ω
Z_01 = sqrt((R_01^2)+(X_01^2)) // equivalent impedance reffered to primary side in Ω
R_02 = R_2+(R_1/a^2)           // total resistance referred to secondary side Ω
X_02 = X_2+(X_1/a^2)           // total reactance referred to secondary side Ω
Z_02 = sqrt((R_02^2)+(X_02^2)) // equivalent impedance reffered to secondary side in Ω

// display the result 
disp("Example 3.6 solution");
printf(" \n Equivalent impedance reffered to primary side \n Z_01 = %.1f Ω \n", Z_01);
printf(" \n Equivalent impedance reffered to secondary side \n Z_02 = %.2f Ω \n", Z_02);
