// calculate output voltage 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 17-12, page 644

clear; clc; close;

// Given data
Av=200000;// voltage gain
CMRRdb=90;// common mode rejection ratio in decibals
Vin=10^-6;// input voltage in volts

// Calculations
CMRR=10^(CMRRdb/20);// common mode rejection ratio 
Avcm=Av/CMRR;// swamped voltage gain
Vout1=Vin*Av;// desired output voltage in volts
Vout2=Vin*Avcm;// common mode output voltage in volts
Vout=Vout1+Vout2;// total output voltage in volts 
disp("Volts",Vout,"output voltage=")

// Result
// Output voltage is 6.32 microVolts