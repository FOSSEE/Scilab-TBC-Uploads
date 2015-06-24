// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 9 : SYNCHRONOUS GENERATOR
// Example : 9.5

clc;clear; // clears the console and command history 

// Given data
P = 12       // number of poles
S = 180      // number of slots
phi_m = 0.05 // flux per pole in Wb
N = 600      // speed of machine in rpm

// caclulations 
T_p = S/P                                     // pole pitch interms of slots
slots_1 = 180/T_p                             // pole pitch per slots
n = S/(P*3)                              // number of slots or coils per pole per phase
k_d = sind((n*slots_1)/2)/(n*sind(slots_1/2)) // distribution factor
k_p = 1                                       // pitch factor
Z = (180/3)*slots_1                           // number of conductor per phase
T = Z/2                                       // number of turns per phase
f = P*N/120                                   // frequency in Hz
E = 4.44*k_p*k_d*f*phi_m*T                    // induced voltage in V
E_L = sqrt(3)*E                               // line voltage in V

// display the result 
disp("Example 9.5 solution"); 
printf(" \n Line voltage is \n E_L = %.0f V \n", E_L );

// NOTE : correction in answer 
