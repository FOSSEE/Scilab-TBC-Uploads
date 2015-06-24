// find phase shift of output voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 21-13, page 833

clear;clc; close;
	
// Given data
C=100*10^-9;// capacitance in faraday
R=10^3;// resistance in ohms
f=10^3;// frequency in hertz

// Calculations
fo=1/(2*%pi*R*C);// cutoff frequency in hertz
angle=2*atan(fo/f)*180/%pi;// phase shift in degree
disp("degrees",angle,"phase shift=")

// Result
// Phase shift is 116 degrees