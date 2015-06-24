// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-6

clear; clc; close; // Clear the work space and console.

// Given data as per Example 8-4
// Y-connected synchronous dynamo
P = 2 ; // No. of poles
hp = 1000 ; // power rating of the synchronous motor in hp
V_L = 6000 ; // Line voltage in volt
f = 60 ; // Frequency in Hz
R_a = 0.52 ; // Effective armature resistance in ohm
X_s = 4.2 ; // Synchronous reactance in ohm
P_t = 811 ; // Input power in kW
PF = 0.8 ; // Power factor leading

// Calculated values from Example 8-4
E_gp = 3687 ; // Generated voltage/phase in volt 

I_a = 97.55 ; // Phase armature current in A

phi = (42.45 - 0); // Phase angle between E_gp and I_a in degrees 
// where 42.45 and 0 are phase angles of E_gp and I_a in degrees respectively.

// Calculations
// case a 
P_p = E_gp * I_a * cosd(phi) / 1000; // Mechanical power developed per phase in kW

P_t_a = 3 * P_p ; // Total mechanical power developed in kW

// case b
P_t_b = P_t_a / 0.746 ; // Internal power developed in hp at rated load

// case c
S = 120 * f / P ; // Speed of the motor in rpm
T_int = ( P_t_b * 5252 ) / S ; // Internal torque developed in lb-ft

// case d
T_ext = ( hp * 5252 ) / 3600 ; // External torque developed in lb-ft
eta = (T_ext / T_int) * 100 ; // Motor efficiency in percent

// Display the results
disp("Example 8-6 Solution : ");
printf(" \n a: Similar to a dc motor, the mechanical power developed in the armature");
printf(" \n    is the product of the induced EMF per phase, the armature current");
printf(" \n    per phase, and the cosine of the angle between them.\n");
printf(" \n    P_p = %.3f kW \n    P_t = %.1f kW \n", P_p, P_t_a );

printf(" \n b: P_t = %.1f hp \n ", P_t_b );

printf(" \n c: T_int = %.f lb-ft \n ", T_int );

printf(" \n d: T_ext = %d lb-ft  \n", T_ext );
printf(" \n    Motor Efficiency,\n    eta = %.1f percent ", eta );
