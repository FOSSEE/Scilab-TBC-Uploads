// find currents and voltages 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 17-3, page 626

clear; clc; close;

// Given data
Vee=12;// in volts from the figure
Vcc=12;// in volts from the figure
Re=5*10^3;// emitter resistance in ohms
Rcright=3*10^3;// collector resistance in ohms
Rcleft=0;// collector resistance in ohms

// Calculations
It=Vee/Re;// tail current in amperes
Ie=It/2;// emitter current in amperes
Ic=Ie;// collector current is equal to emitter current
Vcright=Vcc-(Ic*Rcright);// quiescent voltage of right collector in volts
Vcleft=Vcc-(Ic*Rcleft);// quiescent voltage of left collector in volts
disp("Amperes",It,"tail current=")
disp("Amperes",Ie,"emitter current=")
disp("Volts",Vcright,"right quiescent collector voltage=")
disp("Volts",Vcleft,"left quiescent collector voltage=")

// Result
// Tail current is 2.4 mAmperes
// Emitter current is 1.2 mAmperes
// Right hand side collector has a quiescent voltage of 8.4 Volts
// Left hand side collector has a quiescent voltage of 12 Volts