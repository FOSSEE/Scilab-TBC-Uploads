// find frequency of output and duty cycle
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 23-8, page 922

clear;clc; close;
	
// Given data
C=47*10^-9;// capacitance in faraday
R1=75*10^3;// resistance in ohms
R2=30*10^3;// resistance in ohms

// Calculations
f=1.44/((R1+2*R2)*C);// frequency in hertz
D=(R1+R2)/(R1+(2*R2));// duty cycle
disp("hertz",f,"frequency in hertz=")
disp("%",D,"duty cycle")

// Result
// Frequency of output signal is 227 hertz
// duty cycle is 0.778