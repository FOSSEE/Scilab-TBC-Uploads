// find voltage gain ,cutoff frequency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 21-1, page 806

clear;clc; close;
	
// Given data
R1=10^3;// in ohms
R2=39*10^3;// in ohms
R3=12*10^3;// in ohms
C1=680*10^-12;// capacitance in faraday

// Calculations
Av=(R2/R1)+1;// voltage gain
fc=1/(2*%pi*R3*C1);// cutoff frequency in hertz
disp(Av,"Voltage gain=")
disp("Hertz",fc,"cutoff frequency=")

// Result
// voltage gain is 40
// cutoff frequency is 19.5 KHertz