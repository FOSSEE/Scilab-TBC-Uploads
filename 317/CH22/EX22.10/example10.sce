// find frequency of output signal
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 22-10, page 871

clear;clc; close;
	
// Given data
R1=18*10^3;// resistance in ohms
R2=2*10^3;// resistance in ohms
R=10^3;// resistance in ohms
C=0.1*10^-6;// capacitance in faraday

// Calculations
B=R1/(R1+R2);// feedback fraction
T=2*R*C*log((1+B)/(1-B));// time period of output signal
f=1/T;// frequency of output signal
disp("hertz",f,"Frequency=")

// Result
// Frequency of output signal is 1.7 KHertz