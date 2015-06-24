// find pole frequency ,Q,cutoff frequency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 21-6, page 817

clear;clc; close;
	
// Given data
C=330*10^-12;// capacitance in faraday
R1=51*10^3;// resistance in ohms
R2=30*10^3;// resistance in ohms
R=47*10^3;// resistance in ohms

// Calculations
Av=(R2/R1)+1;// midband voltage gain
Q=1/(3-Av);// q of the filter
fp=1/(2*%pi*R*C);// peak frequency in hertz
fc=fp;// for Butterworth response cutoff frequency is equal to peak frequency
disp(Q,"Q of the filter=")
disp("hertz",fc,"cutoff frequency=")
disp("hertz",fp,"peak frequency=")

// Result
// Q of the filter is 0.709
// peak frequency is 10.3 kHertz
// cutoff frequency is 10.3 kHertz
