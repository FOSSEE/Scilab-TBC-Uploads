// find voltage gain,center frequency,Q 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 21-12, page 827

clear;clc; close;
	
// Given data
C=120*10^-9;// capacitance in faraday
R1=13*10^3;// resistance in ohms
R2=10*10^3;// resistance in ohms
R=22*10^3;// resistance in ohms

// Calculations
Av=(R2/R1)+1;// voltage gain
Q=0.5/(2-Av);// q of the filter
f0=1/(2*%pi*R*C);// center frequency in hertz
disp(Q,"Q of the filter=")
disp(Av,"Voltage gain=")
disp("hertz",f0,"resonant frequency=")

// Result
// Q is 2.17
// resonant frequency is 60.3 Hertz
// Voltage gain is 1.77