// find load current 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 5-13, page 168

clear;clc; close;
	
// Given data
// input terminals are shorted
Vs=9;// dc input voltage in volts
Vd=2;// forward voltage in volts
Rs=470;// series resistance in ohms

// Calculations
Is=(Vs-Vd)/Rs;// load current in amperes
disp("Amperes",Is,"load current =")

// Result
// approximate load current is 14.9 mAmperes.
