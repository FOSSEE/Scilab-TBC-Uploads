// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-8

clear; clc; close; // Clear the work space and console.

// Given data from Ex.8-3a
// 3- phase Y-connected synchronous motor
P = 6 ; // No. of poles
hp = 50 ; // power rating of the synchronous motor in hp
V_L = 440 ; // Line voltage in volt
X_s = 2.4 ; // Synchronous reactance in ohm
R_a = 0.1 ; // Effective armature resistance in ohm
alpha = 20 ; // The rotor shift from the synchronous position in
// electrical degrees.
E_gp = 240 ; // Generated voltage/phase in volt when the motor is under-excited
f = 60 ; // Frequency in Hz

// Calculated values from Example 8-3a
V_p = 254 ; // Phase voltage in volt

// Calculations
// case a
// Torque developed per phase Using Eq.(8-17a)
S = 120 * f / P ; // Speed of the motor in rpm
T_p = ( 7.04 * E_gp * V_p ) / ( S*X_s) * sind(alpha); 

// case b
// Total horsepower developed using part a
Horsepower = ( 3*T_p*S )/5252; 

// Display the results
disp("Example 8-8 Solution : ");
printf(" \n From given and calculated data of Ex.8-3a,\n");
printf(" \n a: T_p = %.2f lb-ft \n ", T_p );

printf(" \n b: Horsepower = %.1f hp ", Horsepower );
