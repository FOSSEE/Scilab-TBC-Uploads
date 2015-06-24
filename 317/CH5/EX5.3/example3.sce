// to find zener current
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 5-3, page 149

clear;clc; close;

// Given data
Vl=10;// load voltage in volts
Rl=1*10^3;// in ohms
Rs=270;// in ohms
Vs=18;// in volts
Vz=10;// zener voltage in volts

// Calculations
Is=(Vs-Vz)/Rs; // current through series resistor in amperes
Il=Vl/Rl;// in amperes
Iz=Is-Il;// zener current in amperes
disp("Amperes",Iz,"zener current =")

// Result
// Zener current is 19.6 mAmperes 
