// find slope of output ramp,its peak value,duration
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 23-12, page 929

clear;clc; close;
	
// Given data
C=100*10^-9;// capacitance in faraday
Ic=10^-3;// collector cuurent in amperes
Vcc=15;// in volts
f=2.5*10^3;// frequency in hertz

// Calculations
S=Ic/C;// slope in Volts/second
V=2*Vcc/3;// peak value of ramp
T=2*Vcc/(3*S);// duration of ramp in seconds
disp(S,"slope of output ramp=")
disp("Volts",V,"peak value=")
disp("seconds",T,"duration of the ramp=")

// Result
// slope of output ramp is 10^4 Volts/Second
// Peak value is 10 Volts
// duration of the ramp is 10^-2 second