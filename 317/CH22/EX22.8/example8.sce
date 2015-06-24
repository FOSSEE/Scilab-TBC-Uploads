// find output voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 22-8, page 868

clear;clc; close;
	
// Given data
fin=10^3;// frequency in hertz`
Vp=5;// peak voltage in volts
C=10*10^-6;// capacitance in faraday
R=10^3;// resistance in ohms

// Calculations
Vout=Vp/(2*fin*R*C);// output voltage in Vpp
disp("Volts",Vout,"output voltage=")

// Result
// Output voltage is 0.25 Vpp