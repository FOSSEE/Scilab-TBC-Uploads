// find ideal currents and voltages 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 17-1, page 625

clear; clc; close;

// Given data
Vee=15;// in volts from the figure
Vcc=15;// in volts from the figure
Re=7.5*10^3;// emitter resistance in ohms
Rc=5*10^3;// collector resistance in ohms

// Calculations
It=Vee/Re;// tail current in amperes
Ie=It/2;// emitter current in amperes
Ic=Ie;// collector current is equal to emitter current
Vc=Vcc-(Ic*Rc);// quiescent voltage in volts
disp("Amperes",It,"tail current=")
disp("Amperes",Ie,"emitter current=")
disp("Volts",Vc,"quiescent collector voltage=")

// Result
// Tail current is 2 mAmperes
// Emitter current is 1 mAmperes
// Collector has a quiescent voltage of 10 Volts