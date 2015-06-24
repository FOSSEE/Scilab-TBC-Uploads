// find approximate ripple voltage across load
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 5-8, page 154

clear;clc; close;
	
// Given data
Rs=270; // series resistance in ohms
Vrin=2;// input ripple in volts
Rz=8.5;// zener resistance in ohms
Vz=10;// breakdown voltage in volts

// Calculations
Vrout=(Rz/Rs)*Vrin;// output ripple in volts
disp("Volts",Vrout,"load ripple=")

// Result
// approximate load ripple is 63 mVolts
