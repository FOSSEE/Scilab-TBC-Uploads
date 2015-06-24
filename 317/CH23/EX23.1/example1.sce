// find minimum and maximum frequency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 23-1, page 897

clear;clc; close;
	
// Given data
C=0.01*10^-6;// capacitance in faraday
Rmin=1*10^3;// resistance in ohms
Rmax=101*10^3;// resistance in ohms

// Calculations
fcmin=1/(2*%pi*Rmax*C);// cutoff frequency in hertz
fcmax=1/(2*%pi*Rmin*C);// cutoff frequency in hertz
disp("hertz",fcmax,"Maximum frequency of osscillation=")
disp("hertz",fcmin,"Minimum frequency of osscillation=")

// Result
// Minimum frequency of osscillation is 158 Hertz
// Maximum frequency of osscillation is 15.9 KHertz