// find re(ac) 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 9-6, page 301

clear;clc; close;

// Given data
Ie=1.3*10^-3;// emitter current in amperes

// Calculations
re=25*10^-3/Ie;// ac emitter resistance in ohms
disp("Ohms",re,"re(ac)=")

// Result
// re(ac) of the base-biased amplifier is 19.2 ohms
