// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.15

clc;clear; // clears the console and command history 

// Given data
V_L1 = 11 // three-phase transformer supply in kV
I_P1 = 6  // three-phase transformer current in A
a = 11    // turns ratio

// caclulations 
// delta-wye
V_dP2 = V_L1*10^3/a         // phase voltage at secondary side in V
V_dL2 = sqrt(3)*V_dP2       // line voltage at secondary side in V
I_dP1 = a/sqrt(3)           // phase current in the primary in A
I_dL2 = a*I_dP1             // line current in secondary in A
//Wye delta connection 
V_wP1 = V_L1*10^3/sqrt(3)   // phase voltage at primary in V
V_wP2 = V_wP1/a             // phase voltage at secondary in V, V_L2=V_P2
I_wP2 = a*I_P1              // phase current in secondary in A
I_wL2 = sqrt(3)*I_wP2       // line current in secondary in A

// display the result 
disp("Example 3.15 solution");
printf(" \n For delta-wye connection-");
printf(" \n Phase voltage at secondary side \n V_dL2 = %.f V \n", V_dL2);
printf(" \n Line voltage at secondary side \n I_dL2 = %.2f A \n", I_dL2);
printf(" \n For wye-delta connection-")
printf(" \n Phase voltage at secondary side \n V_wL2 = %.2f V \n", V_wP2);
printf(" \n Line current in secondary side \n I_wL2 = %.2f A \n", I_wL2);

