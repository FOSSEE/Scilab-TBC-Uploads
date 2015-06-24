// calculate currents and voltages using second approximation
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 17-2, page 626

clear; clc; close;

// Given data
Vee=15;// in volts from the figure
Vcc=15;// in volts from the figure
Re=7.5*10^3;// emitter resistance in ohms
Rc=5*10^3;// collector resistance in ohms
Vin=10^-3;// in volts
B=300;// given

// Calculations
It=(Vee-0.7)/Re;// tail current in amperes using second approximation
Ie=It/2;// emitter current in amperes
Ic=Ie;// collector current is equal to emitter current
Vc=Vcc-(Ic*Rc);// quiescent voltage in volts
disp("Amperes",It,"tail current=")
disp("Amperes",Ie,"emitter current=")
disp("Volts",Vc,"quiescent collector voltage=")

// Result
// Tail current is 1.91 mAmperes
// Emitter current is 0.955 mAmperes
// Collector has a quiescent voltage of 10.2 Volts
 