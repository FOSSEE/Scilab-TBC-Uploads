// using second approximation find load voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 5-7, page 153

clear;clc; close;

// Given data
Iz=20*10^-3;// zener current in amperes
Rz=8.5;// zener resistance in ohms
Vz=10;// breakdown voltage in volts

// Calculations
dVl=Iz*Rz;// change in load voltage in volts
Vl=Vz+dVl;// load voltage  in  volts
disp("Volts",Vl,"load voltage=")

// Result
// load voltage is 10.17 volts
