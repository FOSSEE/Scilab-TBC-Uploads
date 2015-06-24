// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 9 : SYNCHRONOUS GENERATOR
// Example : 9.6

clc;clear; // clears the console and command history 

// Given data
P = 4        // number of poles
m = 3        // number of phase 
f = 50       // frequency in Hz
phi_m = 0.05 // flux per pole in Wb

// caclulations 
T_p = 6*3 // pole pitch interms of slots 6 slots per pole per phase hence for 3  phase
slots_1 = 180/T_p                             // pole pitch per slots
T_c = (5/6)*T_p                               // coil per pitch
y = T_p-T_c                                   // short pitch angle
y_angle = y*10                                // short pitch in terms of angle
k_p = cosd(y_angle/2)                         // pitch factor
n = 6                                         // number of slots
k_d = sind((n*slots_1)/2)/(n*sind(slots_1/2)) // distribution factor
T = (1/2)*n*P*2*5                             // 2=no. of layers, 5=condctor per layer
E = 4.44*k_p*k_d*f*phi_m*T                    // induced voltage in V

// display the result 
disp("Example 9.6 solution"); 
printf(" \n Voltage per phase is \n E = %.0f V \n", E );

