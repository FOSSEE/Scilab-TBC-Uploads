// find output voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 24-16, page 984

clear; clc; close;

// Given data
R1=1*10^3;// in ohms
R2=5.79*10^3 ;// in ohms
Vref=2.21;// in volts

// Calculations
Vout=((R1+R2)/R1)*Vref;// output voltage in volts
disp("Volts",Vout,"output voltage=")

// Results
// Output voltage is 15 Volts