// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-12

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

// Calculations from Ex.9-10
E_lr = V_p / 4 ; // Locked-rotor voltage per phase
S = (120*f)/P ; // Speed in rpm of the rotating magnetic field

// Calculations (Ex.9-12)
P_in = (E_lr)^2 / (2*X_lr); // rotor power input(RPI) in W/phase
P_in_total = P_in * 3 ; // Total 3-phase rotor power input(RPI) in W

T_max = 7.04*(P_in_total/S); // Maximum torque developed in lb-ft

s_b = R_r / X_lr ; // Slip

s = s_b;
S_r = S*(1 - s); // Rotor speed in rpm for T_max

// Display the results
disp("Example 9-12 Solution : ");

printf(" \n Rotor power input (RPI) per phase is : ");
printf(" \n P_in = %.1f W/phase \n",P_in);

printf(" \n The total 3-phase rotor power input (RPI) is : ");
printf(" \n P_in = %.1f W\n",P_in_total);

printf(" \n Substituting in Eq.(9-19),\n T_max = %.2f lb-ft\n",T_max);
printf(" \n Then, s_b = %.1f \n and S_r = %d rpm",s_b,S_r);
