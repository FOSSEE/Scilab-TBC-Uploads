// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 9 : SYNCHRONOUS GENERATOR
// Example : 9.7

clc;clear; // clears the console and command history 

// Given data
P = 10         // number of poles
m = 3          // number of phase 
f = 50         // frequency in Hz
phi_m1 = 0.05  // flux per pole in Wb
phi_m3 = 0.006 // flux per pole in Wb
T_c = 150      // coil 

// caclulations 
T_p = 3*3 // pole pitch interms of slots 3 slots per pole per phase hence for 3  phase
slots_1 = 180/T_p                              // pole pitch per slots
y = 180-T_c                                    // short pitch angle
n = 3                                          // number of slots
k_p1 = cosd(y/2)                               // pitch factor
k_d1 = sind((n*slots_1)/2)/(n*sind(slots_1/2)) // distribution factor
E_1 = 4.44*k_p1*k_d1*f*phi_m1*T_c              // induced voltage in V
k_p3 = cosd(y/2)                               // pitch factor
k_d3 = sind((n*slots_1)/2)/(n*sind(slots_1/2)) // distribution factor
E_3 = 4.44*k_p3*k_d3*f*phi_m3*T_c              // induced voltage in V
E = sqrt(E_1^2+E_3^2)                          // induced voltage per phase in V

// display the result 
disp("Example 9.7 solution"); 
printf(" \n Induced voltage per phase is \n E = %.0f V \n", E );

