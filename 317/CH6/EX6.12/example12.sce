// find if transistor is safe
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 6-12, page 212

clear;clc; close;

// Given data
T1=100;// ambient temperature 
T2=25;// in degree celcius
P=625*10^-3;// power rating in watts at 25 degree celcius
d=5*10^-3;// derating factor with respect to temperature

// Calculations
dT=T1-T2;// difference in temperature
dP=d*dT;// difference in power
Pd=P-dP;// maximum power dissipated in watts when ambient temperature is 100 degree celcius
disp("watts",Pd,"dissipated power=")

// Result
// If power dissipation is less than rated power at ambient temperatureor ambient temperature doesnt increase,transistor is safe 