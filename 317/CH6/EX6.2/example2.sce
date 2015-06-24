// to find collector current of the transistor
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 6-2, page 194

clear;clc; close;

// Given data
Bdc=175;// current gain
Ib=0.1*10^-3;// base current in amperes

// Calculations
Ic=Bdc*Ib;// collector current in amperes
disp("Amperes",Ic,"collector current =")

// Result
// Collector current is 17.5 mAmperes.
