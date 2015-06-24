// find average LED current
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 5-15, page 170

clear;clc; close;
	
// Given data
f=60;// frequency in hertz
C=0.68*10^-6;// capacitance in faradays
V=170;// voltage in volts

// Calculations
Xc=1/(2*%pi*f*C);// capacitive resistance in ohms
Is1=V/Xc;// peak current in amperes
Is2=Is1/%pi;// average of the half-wave currnt through LED
disp("Amperes",Is2,"average LED current =")

// Result
// Average LED current is 13.9 mAmperes 

