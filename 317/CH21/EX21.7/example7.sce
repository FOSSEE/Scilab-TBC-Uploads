// find pole frequency ,Q,cutoff frequency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 21-7, page 817

clear;clc; close;
	
// Given data
C=100*10^-12;// capacitance in faraday
R1=56*10^3;// resistance in ohms
R2=15*10^3;// resistance in ohms
R=82*10^3;// resistance in ohms
Kc=0.786;// constant for Bessel response

// Calculations
Av=(R2/R1)+1;// midband voltage gain
Q=1/(3-Av);// q of the filter
fp=1/(2*%pi*R*C);// peak frequency in hertz
fc=Kc*fp;// for Bessel's response cutoff frequency is Kc*peak frequency
disp(Q,"Q of the filter=")
disp("hertz",fc,"cutoff frequency=")
disp("hertz",fp,"peak frequency=")

// Result
// Q of the filter is 0.578
// peak frequency is 19.4 kHertz
// cutoff frequency is 15.2 kHertz
