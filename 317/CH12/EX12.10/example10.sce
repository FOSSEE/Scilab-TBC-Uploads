// calculate efficiency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 12-10, page 400

clear;clc; close;
// Given data
R=3.9*10^3;// resistance in ohms
R1=3.9*10^3;// in ohms
Vcc=20;// in volts
Rl=10;// in ohms
Vceq=10;// in volts 
Vbe=0.7;// in volts

// Calculations
Ibias=(Vcc-(2*Vbe))/(2*R);// dc current through biasing resistors
Iq=Ibias;// quiescent collector current assuming compensating diodes match the emitter diodes
Icsat=Vceq/Rl;// saturation current in amperes
Iav=Icsat/%pi;// collector current in the conducting transistor
Idc=Ibias+Iav;// total current drain in amperes
Pdc=Vcc*Idc;// dc input power in watts
MPP=Vcc;// in volts
Poutmax=(MPP^2)/(8*Rl);// maximum output power in watts
E=(Poutmax/Pdc)*100;// efficiency in percentage
disp("%",E,"efficiency=")
disp("Amperes",Iq,"quiescent collector current=")

// Result
// efficiency is 78%
// quiescent collector current is 2.38 mAmperes
