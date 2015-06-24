// calculate load voltage 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 17-13, page 651

clear; clc; close;

// Given data
Vee=15;// in volts from the figure
Vcc=15;// in volts from the figure
Re=7.5*10^3;// emitter resistance in ohms
Rc=7.5*10^3;// collector resistance in ohms
Rl=15*10^3;// load resistance in ohms
Vin=10*10^-3;// input voltage in volts

// Calculations
It=Vee/Re;// tail current in amperes
Ie=It/2;// emitter current in amperes
re=(25*10^-3)/Ie;// ac emitter resistance in ohms
Av=Rc/re;// unloaded voltage gain
Vout=Av*Vin;// unloaded output voltage in volts
Rth=2*Rc;// thevenin resistance in ohms
Vl=Vout/2;// load voltage in volts as Rl=Rth 
disp("Volts",Vl,"load voltage=")

// Result
// Load voltage is 1.5 Volts