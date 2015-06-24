// find output,load,collector current
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 24-1, page 954

clear; clc; close;

// Given data
Vin=15;// input voltage
Rs=10;// in ohms
Vz=9.1;// in volts
Vbe=0.8;// in volts
Rl=40;// in ohms

// Calculations
Vout=Vz+Vbe;// output voltage in volts
Is=(Vin-Vout)/Rs;// current through series resistor in amperes
Il=Vout/Rl;// load current in amperes
Ic=Is-Il;// collector current in ampers
disp("Volts",Vout,"output voltage=")
disp("amperes",Il,"load current=")
disp("amperes",Ic,"collector current=")

// Results
// Output voltage is 9.9
// Load current is 248 mAmperes
// Collector current is 262 mAmperes