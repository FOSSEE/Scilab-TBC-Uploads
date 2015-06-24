// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 9 : SYNCHRONOUS GENERATOR
// Example : 9.11

clc;clear; // clears the console and command history 

// Given data
kVA = 25        // kVA ratings
V = 440         // suppy voltage in V
f = 50          // supply frequency in Hz
pf = 0.8        // lagging power factor
R_a = 0.3       // resistance of machine per phase in ohm
X_d = 5         // reactance of machine per phase in ohm
X_q = 3         // reactance of machine per phase in ohm

// caclulations 
phi = acosd(pf)
V_t = V/sqrt(3)                                   // terminal voltage per phase in V
I_a = 25*10^3/(sqrt(3)*V)                         // armature current
delta = atand(I_a*X_q*pf/(V_t+I_a*X_q*sind(phi))) // torque angle
I_d = I_a*sind(delta+phi)                  // direct axis component of the current in A
E_f = V_t*cosd(delta)+I_d*X_d                     // induced voltage per phase in V
VR = ((E_f-V_t)/V_t)*100                          // voltage regulation in V

// display the result  
disp("Example 9.11 solution"); 
printf(" \n Torque angle \n delta = %.2f degree \n", delta );
printf(" \n Induced voltage per phase \n E_f = %.2f V \n", E_f );
printf(" \n Voltage regulation \n VR = %.2f percent \n", VR );


