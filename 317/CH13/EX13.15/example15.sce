// calculate voltage gain
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 13-15, page 450

clear; clc; close;

// Given data
Rs1=220;// in ohms
Rs2=780;// in ohms
Rl=3*10^3;// in ohms
gm=2000*10^-6;// transconductance in Seimen


// Calculations
Rs=Rs1+Rs2;// total dc source resistance in ohms
rs=Rs*Rl/(Rs+Rl);// ac drain resistance in ohms
Av=gm*rs/(1+(gm*rs));// voltage gain
disp(Av,"Votage gain=")

// Result
// voltage gain is 0.6