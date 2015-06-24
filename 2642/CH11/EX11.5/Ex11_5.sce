// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 11 : SINGLE-PHASE MOTORS
// Example : 11.5

clc;clear; // clears the console and command history 

// Given data
f = 50      // supply frequency in Hz
V_nl = 100  // no-load voltage in v
I_nl = 2.5  // no-load current in A
P_nl = 60   // no-load power in W

V_br = 60    // Block rotor test voltage in v
I_br = 3     // Block rotor test current in A
P_br = 130   // Block rotor test  power in W
R_1 = 2      // main windning resistance in ohm

// caclulations
Z_br = V_br/I_br                    // impedance due to blocked rotor test
R_br = P_br/I_br^2                  // resistance due to blocked rotor test in ohm
X_br = sqrt(Z_br^2-R_br^2)          // reactance under blocked condition in ohm
X_1 = X_br/2                        // reactance in ohm X_1=X_2
R_2 = R_br-R_1                      // resistance in ohm
Z_nl = V_nl/I_nl                    // impedance due to no-load in ohm
R_nl = P_nl/I_nl^2                  // resistance due to no-load in ohm
X_nl = sqrt(Z_nl^2-R_nl^2)          // reactance due to no-load in ohm
X_m =2*(X_nl-X_1-0.5*X_1)           // magnetizing reactance in ohm
P_rot = P_nl-I_nl^2*(R_1+((R_2)/4)) // rotational loss in W

// display the result  
disp("Example 11.5 solution"); 
printf(" \n Magnetizing reactance \n X_m = %.1f ohm \n", X_m );
printf(" \n Rotational loss \n P_rot = %.0f W \n", P_rot );
