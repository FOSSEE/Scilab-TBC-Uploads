// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 9 : SYNCHRONOUS GENERATOR
// Example : 9.8

clc;clear; // clears the console and command history 

// Given data
kVA = 50    // kVA ratings
V_t = 220   // terminal voltage in V
R_a = 0.011 // effective resistance in ohm
X_s = 0.09  // synchronous reactance in ohm

// caclulations 
phi = acosd(0.85)                                  // since power factor in 0.85
I_a = kVA*10^3/V_t                                // armature current in A
E_f = sqrt((V_t*cosd(phi)+I_a*R_a)^2+(V_t*sind(phi)+I_a*X_s)^2) // induced voltage per phase in V
VR = ((E_f-V_t)/V_t)*100                         // voltage regulation

// display the result 
disp("Example 9.8 solution"); 
printf(" \n No-load induced voltage per phase \n E_f = %.1f V \n", E_f );
printf(" \n Voltage regulation is \n VR = %.1f percent \n", VR );

