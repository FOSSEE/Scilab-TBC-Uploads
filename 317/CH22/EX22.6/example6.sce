// find trip points and hysteresis
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 22-6, page 860

clear;clc; close;
	
// Given data
Vsat=13.5;// in volts 
R1=1*10^3;// resistance in ohms
R2=47*10^3;// resistance in ohms

// Calculations
B=R1/(R1+R2);// feedback fraction
UTP=(R1/R2)*Vsat;// upper trip point in volts
LTP=-(R1/R2)*Vsat;// lower trip point in volts 
H=UTP-LTP;// hysteresis in volts
disp("Volts",UTP,"upper trip point=")
disp("Volts",LTP,"lower trip point=")
disp("Volts",H,"hysteresis=")

// Result
// Trip points are -0.287 and +0.287 Volts
// Hysteresis is 0.574 Volts