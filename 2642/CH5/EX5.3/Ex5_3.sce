// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 5 : DIRECT CURRENT MOTORS 
// Example : 5.3 

clc;clear; // clears the console and command history 
// Given data 
R_a = 0.7;     // armature circuit resistance in Ω
V_t = 5;       // applied voltage in V
I_anl = 5;     // no-load armature current in A
I_afl = 35;    // full-load armature current in A


// caclulations 
E_bnl =  V_t - R_a*I_anl;   // back emf under no-load in V
E_bfl =  V_t - R_a*I_afl;   // back emf under full-load in V
E_bc =  E_bnl - E_bfl;      // change in back emf from  no-load to full load in V
 
 // display the result 
disp("Example 5.3 solution");
printf("\n The change in back emf is \n E_bc = %d V ",E_bc ); 
