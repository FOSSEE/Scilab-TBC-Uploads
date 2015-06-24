// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 4 : DIRECT CURRENT GENERATORS
// Example : 4.10

clc;clear; // clears the console and command history 

// Given data
Pw = 12         // power in kW
P = 4           // number of poles
Z = 500         // number of conductors
V_t = 250       // generator voltage in V
N = 1000        // speed in rpm
P_cu = 600      // full load copper loss in W
brush_drop = 2  // brush drop in V

// caclulations 
A = 4                        // for lab wound A=P
I_a = Pw*10^3/V_t            // armature current in A
R_a = P_cu/I_a^2             // from copper loss equestion R_a in ohm
E_g = V_t+I_a*R_a+brush_drop // generated voltage in V
phi = E_g*60*A/(P*Z*N)       // flux per pole in Wb


// display the result 
disp("Example 4.10 solution");
printf(" \n Flux per pole \n phi = %.3f Wb \n", phi );
