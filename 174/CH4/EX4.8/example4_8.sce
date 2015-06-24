// To find shunt and current limiting resistor
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 4-8 in Page 70


clear; clc; close;

// Given data
I_fsd = 10*(10^-3); // current for full scale deflection in ampere
R_m = 5; //internal resistance of the d'Arsonval movement in ohm
E = 3; //Battery voltage in volt
R_h = 0.5; //The desired scale marking for the half scale deflection in ohm

//Calculations
I_m = 0.5 * I_fsd; // Current for half scale deflection of movement
E_m = I_m * R_m; //The voltage across movement
I_x = E_m / R_h; // Voltage across unknown resistor R_x
I_sh = I_x - I_m; //As I_x = I_sh + I_m
R_sh = E_m / I_sh;
I_t = I_m +I_sh +I_x; //The total battery current
R_1 = (E - E_m)/I_t; 
printf("(a)  The value of the shunt resistor, R_sh = %0.3f ohm\n",R_sh);
printf("(b)  The value of the current limiting resistor, R_1 = %0.2f ohm",R_1);

//Result
// (a)  The value of the shunt resistor, R_sh = 0.556 ohm
// (b)  The value of the current limiting resistor, R_1 = 29.75 ohm 

