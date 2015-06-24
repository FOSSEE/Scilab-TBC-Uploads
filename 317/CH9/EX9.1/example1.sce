// find the value of capacitance
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 9-1, page 289

clear;clc; close;

// Given data
R=2*10^3;// resistance in ohms
fmin=20;// lower frequency range
fmax=20*10^3;// higher frequency range

// Calculations
Xc=200;// Xc<0.1*R at 20 Hertz
C=1/(2*%pi*fmin*Xc);// in faraday 
disp("Faraday",C,"Capacitance=")

// Result
// Capacitance required is 39.8 micro Faraday
