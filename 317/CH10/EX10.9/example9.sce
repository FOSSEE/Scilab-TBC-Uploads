// calculate minimum and maximum voltage gai of 2 stage amplifier
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 10-9, page 335

clear;clc; close;

// Given data
rmin=0;// minimum adjustable resistance in ohms
rmax=10*10^3;// maximum adjustable resistance in ohms
re=100;// in ohms

// Calculations
rfmin=rmin+1*10^3;// minimum feedback resistance in ohms
rfmax=rmax+1*10^3;// maximum feedback resistance in ohms
Avmin=rfmin/re;// minimum voltage gain
Avmax=rfmax/re;// maximum voltage gain
disp(Avmin,"Minimum Voltage gain=")
disp(Avmax,"Maximum Voltage gain=")

// Results
// minimum voltage gain is 10
// maximum voltage gain is 110
