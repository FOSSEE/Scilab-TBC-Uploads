// calculate drain current,voltage gain
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 13-16, page 451

clear; clc; close;

// Given data
Vdd=30;// in voltage
Rs=2.2*10^3;// in ohms
Rl=3.3*10^3;// in ohms
gm=3500*10^-6;// transconductance in Seimen

// Calculations
// 3:1 voltage divider produces a gate voltage of 10 Volts
Vs=10;// voltage across source resistor in volts
Id=Vs/Rs;// drain current in amperes
rs=Rs*Rl/(Rs+Rl);// ac drain resistance in ohms
Av=gm*rs/(1+(gm*rs));// voltage gain
disp("Amperes",Id,"Drain Current=")
disp(Av,"Votage gain=")

// Results
// Drain current is 4.55 mAmperes
// Voltage gain is 0.822