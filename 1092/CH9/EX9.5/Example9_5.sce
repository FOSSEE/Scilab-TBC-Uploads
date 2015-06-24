// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-5

clear; clc; close; // Clear the work space and console.

// Given data
P = 8 ; // Number of poles in the SCIM
f = 60 ; // Frequency in Hz
R_r = 0.3 ; // Rotor resistance per phase in ohm
S_r = 650 ; // Speed in rpm at which motor stalls

// Calculations
// case a
S = (120*f)/P ; // Speed in rpm of the rotating magnetic field
s_b = (S - S_r)/S ; // Breakdown Slip

// case b
X_lr = R_r / s_b ; // Locked rotor reactance in ohm

// case c
f_r = s_b * f ; // Rotor frequency in Hz, at the maximum torque point 

// case d
s = 5*(1/100);//  Rated slip
S_r = S * (1 - s); // Full-load in rpm speed at rated slip 

// Display the results
disp("Example 9-5 Solution : ");
printf(" \n a: S = %d rpm \n    s_b = %.3f \n", S , s_b );

printf(" \n b: X_b = %.2f ohm \n ", X_lr );

printf(" \n c: f_r = %.1f Hz \n ", f_r );

printf(" \n d: S = %d rpm \n ", S_r );

