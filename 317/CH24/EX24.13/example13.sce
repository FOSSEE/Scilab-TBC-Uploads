// find output voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 24-13, page 972

clear; clc; close;

// Given data
R1=2*10^3;// in ohms
R2=22*10^3 ;// in ohms

// Calculations
Vout=((R1+R2)/R1)*1.25;// output voltage in volts
disp("Volts",Vout,"output voltage=")

// Results
// Output voltage is 15 Volts