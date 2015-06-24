// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 11 : SINGLE-PHASE MOTORS
// Example : 11.3

clc;clear; // clears the console and command history 

// Given data
V_t = 220    // supply voltage in V
f = 50       // frequency in Hz
Z_m = 3+%i*5 // main winding impedance of motor in ohm
Z_s = 5+%i*3 // starting impedance of motor in ohm

// caclulations
alpha_s = atand(imag(Z_s),real(Z_s))                             // angle in degree from Z_s
I_s = V_t/Z_s                          // starting current in A
alpha_m = atand(imag(Z_m),real(Z_m))                                // angle in degree from Z_m
I_m = V_t/(Z_m)                          // main winding current in A
alpha = alpha_m-alpha_s                     // angle of line current
I = sqrt((abs(I_s))^2+(abs(I_m))^2+2*abs(I_s)*abs(I_m)*cosd(alpha)) // line current in A

// display the result  
disp("Example 11.3 solution"); 
printf(" \n Input current \n I_s = %.2f<%.2f A \n", abs(I_s),atand(imag(I_s),real(I_s)) );
printf(" \n Main winding current \n I_m = %.2f<%.f A \n", abs(I_m),atand(imag(I_m),real(I_m)));
printf(" \n Line current \n I = %.2f A \n", I );
