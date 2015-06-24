// calculate worst-case power dissipation
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 12-13, page 411

clear;clc; close;
// Given data
c=470*10^-12;// capacitance in faraday
l=2*10^-6;// inductance in henry
Rl=1*10^3;// load resistance in ohms
Ql=100;
Vcc=15;// in volts

// Calculations
MPP=2*Vcc;// maximum peak-to-peak output in volts
fr=1/(2*%pi*sqrt(l*c));// resonant frequency in hertz
Xl=2*%pi*fr*l;// in ohms
Rp=Ql*Xl;// equivalent parallel resistance of coil in ohms
rc=(Rp*Rl)/(Rp+Rl);// ac collector resistance in ohms
Pd=MPP^2/(40*rc);// worst-case power dissipation of the transistor in watts
disp("Watts",Pd,"worst-case power dissipation=")

// Result
// worst-case power dissipation is 26 mWatts
