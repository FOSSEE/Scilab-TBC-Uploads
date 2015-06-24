// find pole frequency ,Q,cutoff frequency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 21-9, page 820

clear;clc; close;
	
// Given data
C=4.7*10^-9;// capacitance in faraday
R1=24*10^3;// resistance in ohms
R2=12*10^3;// resistance in ohms

// Calculations
Q=((R1/R2)^0.5)/2;// q of the filter
fp=1/(2*%pi*C*((R1*R2)^0.5));// peak frequency in hertz
fc=fp;// for Butterworth response cutoff frequency is equal to peak frequency
disp(Q,"Q of the filter=")
disp("hertz",fc,"cutoff frequency=")
disp("hertz",fp,"peak frequency=")

// Results
// Q of the filter is 0.707(Butterworth response)
// peak frequency is 2 kHertz
// cutoff frequency is 2 kHertz