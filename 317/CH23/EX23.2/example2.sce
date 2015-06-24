// find output voltage of oscillator
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 23-2 , page 897

clear;clc; close;
	
// Given data
R=10^3;// lamp resistance in ohms
V=2;// lamp voltage in volts
Rb=2*10^3;// feedback resistance in ohms

// Calculations
I=V/R;// lamp current in amperes
Vout=I*(R+Rb);// output voltage in volts
disp("Volts",Vout,"output voltage=")

// Result
// Output voltage of the oscillator is 6vrms