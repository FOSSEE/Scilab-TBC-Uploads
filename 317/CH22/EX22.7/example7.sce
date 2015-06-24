// find output voltage, closed loop time constant
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 22-7, page 865

clear;clc; close;
	
// Given data
Avol=100000;// open loop voltage gain
Vin=8;// input voltage in volts 
C=1*10^-6;// capacitance in faraday
R=2*10^3;// resistance in ohms
T=10^-3;// in seconds

// Calculations
t=R*C*(1+Avol);// closed loop time constant in seconds
V=(T*Vin)/(R*C);// magnitude of negative output voltage at end of pulse in volts
disp("seconds",t,"time constant=")
disp("Volts",V,"output voltage=")

// Result
// Closed loop time constant is 200 seconds
// Output voltage at end of pulse is -4 volts