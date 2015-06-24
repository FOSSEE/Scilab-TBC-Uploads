// find pole frequency ,Q,resonant,cutoff,3-db frequency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 21-10, page 821

clear;clc; close;
	
// Given data
C=10^-9;// capacitance in faraday
R1=10*10^3;// resistance in ohms
R2=15*10^3;// resistance in ohms
R=30*10^3;// resistance in ohms
K0=0.94;// constant 
Kc=1.32;// constant 
K3=1.48;// constant 

// Calculations
Av=(R2/R1)+1;// midband voltage gain
Q=1/(3-Av);// q of the filter
fp=1/(2*%pi*R*C);// peak frequency in hertz
fc=fp/Kc;// cutoff frequency in hertz
f0=fp/K0;// resonant frequency in hertz
f3db=fp/K3;// 3-db frequency in hertz
disp(Q,"Q of the filter=")
disp("hertz",fc,"cutoff frequency=")
disp("hertz",fp,"peak frequency=")
disp("hertz",f0,"resonant frequency=")
disp("hertz",f3db,"3db frequency=")

// Result
// Q is 2
// peak frequency is 5.31 kHertz
// cutoff frequency is 4.02 kHertz
// resonant frequency is 5.65 kHertz
// 3-db frequency is 3.59 kHertz