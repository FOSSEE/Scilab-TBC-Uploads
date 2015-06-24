// calculate common mode voltage gain and output voltage 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 17-10, page 642

clear; clc; close;

// Given data
Rc=10^6;// collector resistance in ohms
Re=10^6;// emitter resistance in ohms
Vin=10^-3;// input voltage in volts

// Calculations
Avcm=Rc/(2*Re);// swamped voltage gain
Vout=Vin*Avcm;// output voltage in volts
disp("Volts",Vout,"output voltage=")

// Result
// Output voltage is 0.5 mVolts