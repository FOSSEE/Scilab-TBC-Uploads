// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.13

clc;clear; // clears the console and command history 

// Given data
kVA = 120               // kVA ratings of autotransformer
V1 = 2200               // lower part voltage of autotransformer in V
V2 = 220                // upper part voltage of autotransformer in V

// caclulations 
I_pq = kVA*10^3/V2     // currents of respective windings
I_qr = kVA*10^3/V1     // currents of respective windings
I_1 = I_pq+I_qr        // current in primary side in A
V_2 = V1+V2            // voltage across the secondary side in V
kVA_1 = I_1*V1/1000    // kVA ratings of autotrnsformer
kVA_2 = I_pq*V_2/1000  // kVA ratings of autotrnsformer
 

// display the result 
disp("Example 3.13 solution");
printf(" \n kVA ratings of autotrnsformer \n kVA_1 = %.0f kVA \n", kVA_1);
printf(" \n kVA ratings of autotrnsformer \n kVA_2 = %.0f kVA \n", kVA_2);

