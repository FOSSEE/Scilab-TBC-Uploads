// find pole frequency ,Q,cutoff frequency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 21-4, page 811

clear;clc; close;
	
// Given data
C1=330*10^-12;// capacitance in faraday
C2=440*10^-12;// capacitance in faraday
R=51*10^3;// resistance in ohms
Kc=0.786;// constant for Bessel response

// Calculations
Q=((C2/C1)^0.5)/2;// q of the filter
fp=1/(2*%pi*R*((C1*C2)^0.5));// peak frequency in hertz
fc=Kc*fp;// for Bessel's response cutoff frequency is Kc*peak frequency
disp(Q,"Q of the filter=")
disp("hertz",fc,"cutoff frequency=")
disp("hertz",fp,"peak frequency=")

// Result
// Q of the filter is 0.577(Bessel response)
// peak frequency is 8.19 kHertz
// cutoff frequency is 6.44 kHertz