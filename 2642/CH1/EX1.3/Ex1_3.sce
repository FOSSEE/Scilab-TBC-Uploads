// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 1 : REVIEW OF ELECRTIC CIRCUITS  
// Example : 1.3 

clc;clear; // clears the console and command history 
// Given data 
R1 = 5  // resistance in ohm 
R2 = 4  // resistance in ohm 
R3 = 9  // resistance in ohm 
R4 = 6  // resistance in ohm 
V1 = 10 // voltage in V
V2 = 6  // voltage in V


// caclulations 
// Remove R3 and find R_th by short circuiting  V1 and V2 than R1 and R4  wiil be in parallel 
R = (R1*R4)/(R1+R4)   // equivalent resistance in ohm
// R is connected in series with R2 
R_th = R2+R           // Thevenin's resistance in ohm
I = 4/11              // current in the figure applying KVL in A
V_th = (6*0.36)+6     // voltage in V
I_9 = V_th/(R_th+R3) // current through R3 in A


// display the result 
disp("Example 1.3 solution");
printf(" \n Current through 9Ω \n I_9Ω = %.2f A ", I_9); 
