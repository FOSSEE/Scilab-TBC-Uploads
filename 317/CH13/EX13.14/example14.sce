// calculate output voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 13-14, page 450

clear; clc; close;

// Given data
Rs=10^3;// in ohms
Rl=10^3;// in ohms
gm=2500*10^-6;// transconductance in Seimen
Vin=10^-3;// input voltage in Vpp

// Calculations
rs=Rs*Rl/(Rs+Rl);// ac drain resistance in ohms
Av=gm*rs/(1+(gm*rs));// voltage gain
Vout=Vin*Av;// output voltage in volts
disp("Volts",Vout,"Output voltage=")

// Result
// Output voltage is 0.556 mVpp