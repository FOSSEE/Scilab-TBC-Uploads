// find frequency and peak-to-peak voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 22-12, page 873

clear;clc; close;
	
// Given data
Vsat=13;// in volts 
R1=1*10^3;// resistance in ohms
R2=100*10^3;// resistance in ohms
R3=10*10^3;// resistance in ohms
R4=100*10^3;// resistance in ohms
C=10*10^-6;// capacitance in faraday

// Calculations
UTP=(R1/R2)*Vsat;// upper trip point in volts
H=2*UTP;// hysteresis in volts
Vout=H;// peak to peak voltage in volts
f=R2/(4*R1*R3*C);// frequency in hertz
disp("hertz",f,"Frequency=")
disp("Volts",Vout,"output voltage=")

// Result
// Peak-to-peak output is 0.26 Volts
// frequency is 250 Hertz