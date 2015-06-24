// find collector voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 8-5, page 271

clear;clc; close;

// Given data
Re=1.8*10^3;// emitter current in ohms
Rc=3.6*10^3;// collector resistance in ohms
Rb=2.7*10^3;// in ohms
Vre=1.3;// voltage across the emitter resistor in volts
Vcc=10;// collector supply voltage in volts

// Calculations
Ie=Vre/Re;// emitter current in amperes
Ic=Ie;// collector current is equal to emitter current
Vc=Vcc-Ic*Rc;// collector voltage in volts
disp("Volts",Vc,"Collector Voltage")

// Result
// collector voltage is 7.4 volts
