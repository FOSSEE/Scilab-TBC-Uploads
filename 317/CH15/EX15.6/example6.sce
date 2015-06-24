// find supply voltage 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 15-6, page 536

clear; clc; close;

// Given dataVz=5.6;// breakdown voltage in volts
Vgt=0.75;// gate trigger voltage in volts
Vz=5.6;// breakdown voltage in volts

// Calculations
Vcc=Vz+Vgt;// overvoltage firing the SCR in volts
disp("Volts",Vcc,"Supply voltage=")

// Results
// Supply voltage that turns the crowbar is 6.35 volts