// calculate output voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 13-13, page 449

clear; clc; close;

// Given data
Rd=3.6*10^3;// in ohms
Rl=10*10^3;// in ohms
gm=5000*10^-6;// transconductance in Seimen
Vin=10^-3;// input voltage in Vpp

// Calculations
rd=Rd*Rl/(Rd+Rl);// ac drain resistance in ohms
Av=gm*rd;// voltage gain
Vout=Vin*Av;// output voltage in volts
disp("Volts",Vout,"Output voltage=")

// Result
// Output voltage is 13.3 mVpp