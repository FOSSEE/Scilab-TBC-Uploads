// to find current gain of the transistor
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 6-1, page 194

clear;clc; close;

// Given data
Ic=10*10^-3;// collector current in amperes
Ib=40*10^-6;// base current in amperes

// Calculations
Bdc=Ic/Ib;// current gain
disp(Bdc)
disp(Bdc,"current gain =")

// Result
// current gain is 250.
