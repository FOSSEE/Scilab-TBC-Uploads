// find series and parallel resonant frequencies of crystal
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 23-5, page 912

clear;clc; close;
	
// Given data
L=3;// inductance in henry
Cm=10*10^-12;// capacitance in faraday
Cs=0.05*10^-12;// capacitance in faraday
R=2*10^3;// resistance in ohms

// Calculations
fs=1/(2*%pi*(L*Cs)^0.5);// series resonant frequency in hertz
Cp=Cm*Cs/(Cm+Cs);// equivalent parallel capacitance
fp=1/(2*%pi*(L*Cp)^0.5);// parallel resonant frequency in hertz
disp("hertz",fs,"Series resonant frequency=")
disp("hertz",fp,"parallel resonant frequency=")

// Result
// Series resonant frequency of the crystal is 411 Khertz
// Parallel resonant frequency of the crystal is 412 Khertz