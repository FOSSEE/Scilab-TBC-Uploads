// to check if zener diode shown in the figure is operating in the breakdown region
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 5-2, page 149

clear;clc; close;

// Given data
Rl=1*10^3;// in ohms
Rs=270;// in ohms
Vs=18;// in volts
Vz=10;// zener voltage in volts

// Calculations
Vth=(Rl/(Rs+Rl))*Vs;// Thevenin voltage facing the diode
disp("Volts",Vth,"Thevenin voltage=")
disp("Vth>Vz") 

// Result
// Since thevenin voltage is greater than zener voltage,zener diode is operating in the breakdown region