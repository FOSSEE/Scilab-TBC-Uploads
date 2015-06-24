// calculate bandwidth of amplifier
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 12-12, page 410

clear;clc; close;
// Given data
c=470*10^-12;// capacitance in faraday
l=2*10^-6;// inductance in henry
Rl=1*10^3;// load resistance in ohms
Ql=100;

// Calculations
fr=1/(2*%pi*sqrt(l*c));// resonant frequency in hertz
Xl=2*%pi*fr*l;// in ohms
Rp=Ql*Xl;// equivalent parallel resistance of coil in ohms
rc=(Rp*Rl)/(Rp+Rl);// ac collector resistance in ohms
Q=rc/Xl;// Q of the overall circuit
BW=fr/Q;// band width in hertz
disp("Hertz",BW,"bandwidth=")

// Result
// bandwidth is 390 KHertz
