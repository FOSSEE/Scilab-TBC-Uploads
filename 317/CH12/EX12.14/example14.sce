// calculate maximum power rating 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 12-14, page 414

clear;clc; close;
// Given data
// 2N3904
Pd=625*10^-3;// power rating at 25 degree celcius ambient
D=5*10^-3;// derating factor in watts per degree celcius
T2=50;// highest range in celcius
T1=25;// ambient temperature in degree celcius

// Calculations
dT=T2-T1;// in degree celcius
dP=D*dT;// change in power 
Pdmax=Pd-dP;// in watts
disp("Watts",Pdmax,"maximum power rating=")

// Result
// maximum power rating is 500 mWatts.
