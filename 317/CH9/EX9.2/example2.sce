// find the value of capacitance
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 9-2, page 293

clear;clc; close;

// Given data
R1=600;// resistance in ohms
R2=1*10^3;// resistance in ohms
R=(R1*R2)/(R1+R2);// R=R1||R2
f=1*10^3;// frequency in hertz

// Calculations
Xc=37.5;// Xc<0.1*R at 1000 Hertz
C=1/(2*%pi*f*Xc);// in faraday 
disp("Faraday",C,"Capacitance=")

// Result
// Capacitance required is 4.2 micro Faraday
