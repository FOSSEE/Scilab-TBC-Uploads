// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 9 : SYNCHRONOUS GENERATOR
// Example : 9.10

clc;clear; // clears the console and command history 

// Given data
MVA = 30   // MVA ratings
V = 20     // supply voltage in kV
N = 1800   // speed in rpm
V_t = 15   // voltage per phase in kV
E_f = 10   // per phase terminal voltage in kV
teta = 40  // power angle in degree
X_s = 6    // 3 phase synchronous reactance in ohm

// caclulations 
P = 3*V_t*E_f*sind(teta)/X_s   // power delivered to the load in MW
P_max = 3*V_t*E_f/X_s          // three phase maximum power in MW

// display the result  
disp("Example 9.10 solution"); 
printf(" \n Three phase power delivered to the load \n P = %.2f MW \n", P );
printf(" \n Three phase maximum power \n P_max = %.0f MW \n", P_max );


