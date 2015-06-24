// find trip point,cutoff frequency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 22-4, page 854

clear;clc; close;
	
// Given data
Vcc=15;// in volts from the figure
C=10*10^-6;// capacitance in faraday
R1=200*10^3;// resistance in ohms
R2=100*10^3;// resistance in ohms

// Calculations
Vref=(R2/(R1+R2))*Vcc;// reference voltage in volts
R=R1*R2/(R1+R2);// equivalent resistance in ohms
fc=1/(2*%pi*R*C);// cutoff frequency in hertz
disp("hertz",fc,"cutoff frequency=")
disp("Volts",Vref,"Trip point=")

// Result
// Trip point is 5 Volts
// cutoff frequency is 0.239 Hertz