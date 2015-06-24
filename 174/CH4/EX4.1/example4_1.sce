// To find Shunt resistance required
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 4-1 in Page 56


clear; clc; close;

// Given data
I_m = 1*(10^-3); //Full scale deflection of the movement in ampere
R_m = 100; //Internal resistance of the movement(the coil) in ohm
I = 100*(10^-3); //Full scale of the ammeter including the shunt in Ampere

//Calculations
I_s = I - I_m; // calculating current through shunt
R_s = I_m * R_m/ I_s; //calculating shunt to be added
printf("The value of the shunt resistance required, R_s = %0.2f ohm",R_s);

//Result
// The value of the shunt resistance required, R_s = 1.01 ohm
