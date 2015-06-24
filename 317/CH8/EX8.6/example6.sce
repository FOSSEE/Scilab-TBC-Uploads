// find collector to ground voltage 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 8-6, page 271

clear;clc; close;

// Given data
Vee=15;// in volts
Vcc=15;// in volts
Rc=10*10^3;// in ohms
Re=20*10^3;// in ohms

// Calculations
Ie=(Vee-0.7)/Re;// emitter current in amperes
Ic=Ie;// collector current is equal to emitter current
Vc=Vcc-Ic*Rc;// collector voltage in volts
disp("Volts",Vc,"Collector Voltage")

// Result
// collector to ground voltage is 7.85 volts
