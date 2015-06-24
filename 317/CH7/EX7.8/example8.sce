// find the 2 values of output voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 7-8, page 236

clear;clc; close;

// Given data
Vcc=5;// collector supply voltage in volts
Vbb=10;// base voltage in volts
Rc=1*10^3;// collector resistance in ohms
Rb=10*10^3;// base resistance in ohms
Bdc=50;// current gain
Vcesat=0.15;// saturation voltage in volts
Iceo=50*10^-9;// collector leakage current in amperes

// Calculations
Vce=Vcc-(Iceo*Rc);// collector-emitter voltage in volts
disp("Volts",Vcesat,"Output voltage")
disp("Volts",Vce,"Output voltage")

// Result
// the 2 output voltages are 5 volts and 0.15 volts
