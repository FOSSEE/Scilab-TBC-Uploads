// find pole frequency ,Q,cutoff frequency, 3-db frequencies
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 21-5, page 812

clear;clc; close;
	
// Given data
C1=390*10^-12;// capacitance in faraday
C2=27*10^-9;// capacitance in faraday
R=22*10^3;// resistance in ohms
Ap=12.5;// in decibel
K0=0.99;// constant 
Kc=1.38;// constant 
K3=1.54;// constant 

// Calculations
Q=((C2/C1)^0.5)/2;// q of the filter
fp=1/(2*%pi*R*((C1*C2)^0.5));// peak frequency in hertz
fc=Kc*fp;// cutoff frequency in hertz
f3db=K3*fp;// 3-db frequency in hertz
disp(Q,"Q of the filter=")
disp("hertz",fc,"cutoff frequency=")
disp("hertz",fp,"peak frequency=")
disp("hertz",f3db,"3db frequency=")

// Result
// Q of the filter is 4.16
// peak frequency is 2.23 kHertz
// cutoff frequency is 3.08 kHertz
// 3-db frequency is 3.43 kHertz