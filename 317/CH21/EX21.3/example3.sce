// find pole frequency ,Q,cutoff frequency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 21-3, page 811

clear;clc; close;
	
// Given data
C1=820*10^-12;// capacitance in faraday
C2=1.64*10^-9;// capacitance in faraday
R=30*10^3;// resistance in ohms

// Calculations
Q=((C2/C1)^0.5)/2;// q of the filter
fp=1/(2*%pi*R*((C1*C2)^0.5));// peak frequency in hertz
fc=fp;// for Butterworth response cutoff frequency is equal to peak frequency
disp(Q,"Q of the filter=")
disp("hertz",fc,"cutoff frequency=")
disp("hertz",fp,"peak frequency=")

// Result
// Q of the filter is 0.707(Butterworth response)
// peak frequency is 4.58 kHertz
// cutoff frequency is 4.58 kHertz