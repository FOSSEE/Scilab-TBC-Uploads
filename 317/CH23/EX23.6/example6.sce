// find minimum trigger voltage,maximum capacitor voltage ,width of output pulse
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 23-6, page 918

clear;clc; close;
	
// Given data
C=0.47*10^-6;// capacitance in faraday
R=33*10^3;// resistance in ohms
Vcc=12;// in volts

// Calculations
UTP=2*Vcc/3;// upper trip point in volts
LTP=Vcc/3;// lower trip point in volts
W=1.1*R*C;// pulse width  
disp("Volts",UTP,"Maximum trigger voltage=")
disp("Volts",LTP,"Minimum trigger voltage=")
disp("seconds",W,"pulse width=")

// Result
// Minimum trigger voltage is 4 Volts
// Maximum capacitor voltage is 8 Volts
// Pulse width is 17.1 mSeconds