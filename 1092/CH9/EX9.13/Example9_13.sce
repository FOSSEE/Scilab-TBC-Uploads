// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-13

clear; clc; close; // Clear the work space and console.

// Given data as per Ex.9-10
P = 4 ; // Number of poles in WRIM
f = 60 ; // Frequency in Hz
V = 220 ; // Line voltage in volt
V_p = 220 ; // Phase voltage in volt (delta connection)
hp_WRIM = 1 ; // Power rating of WRIM in hp
S_r = 1740 ; // Full-load rated speed in rpm 
R_r = 0.3 ; // rotor resistance per phase in ohm/phase 
R_x = 0.7 ; // Added resistance in ohm/phase 
X_lr = 1 ; // Locked rotor reactance in ohm

// Calculations
E_lr = V_p / 4 ; // Locked-rotor voltage per phase
S = (120*f)/P ; // Speed in rpm of the rotating magnetic field

// Total 3-phase rotor power input(RPI) in W
P_in = 3 * ( (E_lr)^2 ) / ( (R_r)^2 + (X_lr)^2 ) * R_r ;

T_s = 7.04 * (P_in/S); // Starting torque developed in lb-ft

// Display the results
disp("Example 9-13 Solution : ");

printf(" \n P_in = %.f W \n",P_in);
printf(" \n From Eq.(9-19),starting torque is : \n T_s = %.2f lb-ft",T_s);
