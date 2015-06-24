// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 9 : SYNCHRONOUS GENERATOR
// Example : 9.9

clc;clear; // clears the console and command history 

// Given data
kVA = 200      // kVA ratings
V_t = 33*10^3  // terminal voltage in V
R_a = 0.54     // armature resistance in ohm
V_L = 415      // voltage between lines for SC test in V
I_sh = 25      // short circuit current in A

// caclulations 
phi = acosd(0.9)               // since power factor in 0.9
V_P = V_L/sqrt(3)              // phase voltage during short circuit test in V
Z_s = V_P/I_sh                 // synchronous impedance in ohm
X_s = sqrt(Z_s^2 - R_a^2)       // synchronous reactance in ohm
I_a = kVA/(sqrt(3)*V_t*10^-3) // full loa current in A
V_ta = V_t/sqrt(3)            // voltage per phase alternator
E_f = sqrt((V_ta*cosd(phi)+I_a*R_a)^2+(V_ta*sind(phi)+I_a*X_s)^2) // no-load voltage per phase in V 
VR = ((E_f-V_ta)/V_ta)*100    // voltage regulation

// display the result 
disp("Example 9.9 solution"); 
printf(" \n Synchronous impedance \n Z_s = %.1f ohm \n", Z_s );
printf(" \n Synchronous reactance is \n X_s = %.2f ohm \n", X_s );
printf(" \n Voltage regulation is \n VR = %.2f percent \n", VR );
printf(" \n NOTE : error in calculation, R_a is taken instead of X_s in E_f calculation \n");



