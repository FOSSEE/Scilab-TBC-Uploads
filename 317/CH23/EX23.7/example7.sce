// find width of output pulse
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 23-7, page 919

clear;clc; close;
	
// Given data
C=470*10^-6;// capacitance in faraday
R=10*10^6;// resistance in ohms

// Calculations
W=1.1*R*C;// pulse width  
disp("seconds",W,"pulse width=")

// Result
// Pulse width is 1.44 hrs