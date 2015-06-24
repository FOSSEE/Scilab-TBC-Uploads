// calculate efficiency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 12-9, page 398

clear;clc; close;
// Given data
R=15;// adjustable resistance in ohms
R1=100;// in ohms
R2=100;// in ohms
Vcc=20;// in volts
Rl=8;// in ohms
Vceq=10;// in volts 

// Calculations
Ibias=Vcc/(R1+R2+R);// dc current through biasing resistors
Icsat=Vceq/Rl;// saturation current in amperes
Iav=Icsat/%pi;// collector current in the conducting transistor
Idc=Ibias+Iav;// total current drain in amperes
Pdc=Vcc*Idc;// dc input power in watts
MPP=Vcc;// in volts
Poutmax=(MPP^2)/(8*Rl);// maximum output power in watts
E=(Poutmax/Pdc)*100;// efficiency in percentage
disp("%",E,"efficiency=")

// Result
// efficiency is 63.6%
