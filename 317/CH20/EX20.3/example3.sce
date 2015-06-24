// find maximum positive voltage gain and value of other fixed resistance
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 20-3, page 747

clear; clc; close;

// Given data
nR=7.5*10^3;// in ohms
R=1.5*10^3;// in ohms

// Calculations
n=nR/R;// obvious
Av=n;// maximum positive voltage gain
R2=nR/(n-1);// other fixed resistance in hms
disp(Av,"maximum voltage gain=")
disp("ohms",R2,"resistance=")

// Result
// Maximum voltage gain is 5
// Other resistance is 1.875 Kohms