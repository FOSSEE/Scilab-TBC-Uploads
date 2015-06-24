// find approximate load current 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 5-12, page 168

clear;clc; close;
	
// Given data
Vs=50;// dc input voltage in volts
Vd=2;// forward voltage in volts
Rs=2.2*10^3;// series resistance in ohms

// Calculations
Is=(Vs-Vd)/Rs;// load current in amperes
disp("Amperes",Is,"load current =")

// Result
// approximate load current is 21.8 mAmperes.
