// find voltage gain ,cutoff frequency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 21-2, page 807

clear;clc; close;
	
// Given data
R1=220;// in ohms
R2=43*10^3;// in ohms
C1=100*10^-12;// capacitance in faraday

// Calculations
Av=-R2/R1;// voltage gain
fc=1/(2*%pi*R2*C1);// cutoff frequency in hertz
disp(Av,"Voltage gain=")
disp("Hertz",fc,"cutoff frequency=")

// Result
// Voltage gain is -195
// Cutoff frequency is 37 KHertz