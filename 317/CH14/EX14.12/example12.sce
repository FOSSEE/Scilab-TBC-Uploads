// calculate the RC time constant and lamp power at full brightness 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 14-12, page 504

clear; clc; close;

// Given data
R1=2*10^6;// resistance in ohms
R2=1*10^6;// resistance in ohms
R=10;// resistance of the lamp in ohms
Rdson=1.07;// static drain-source on-resistance in ohms
Vdd=30;// drain cutoff voltage in volts 
C=10*10^-6;// capacitance in faraday

// Calculations
Rth=R1*R2/(R1+R2);// thevenin resistance in ohms
RC=Rth*C;// time constant in seconds
Id=Vdd/(R+Rdson) ;// lamp current in amperes
P=Id*Id*R;// lamp power in watts at full brightness
disp("seconds",RC,"time constant=")
disp("watts",P,"lamp power =")

// Result
// RC time constant is 6.67 seconds
// Lamp power is 73.4 Watts