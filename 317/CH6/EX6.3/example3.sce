// to find base current of the transistor
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 6-3, page 195

 clear;clc; close;

// Given data
Ic=2*10^-3;// collector current in amperes
Bdc=135;// current gain

// Calculations
Ib=Ic/Bdc;// collector current in amperes
disp("Amperes",Ib,"base current =")

// Result
// Base current is 14.8 micro Amperes.

