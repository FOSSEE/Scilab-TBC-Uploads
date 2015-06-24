// find current through the resistor
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 15-8, page 546

clear; clc; close;

// Given data
R1=82;// givenin ohms
R2=22;// given in ohms
Vgt=75;//  in volts

// Calculations
// Ideally the triac has 0 voltas across it when conducting 
I=Vgt/R2;// current through 22 ohm resistor in amperes
disp("Amperes",I,"current through 22 ohm resistor=")

// Results
// Current through the 22 ohm resistor is 3.41 Amperes