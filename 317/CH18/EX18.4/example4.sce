// find slew rate of op-amp
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 18-4, page 673

clear; clc; close;

// Given data
dV=0.25;// voltage change in volts
dT=0.1*10^-6;// time duration in which the voltage change took place in seconds

// Calculations
Sr=dV/dT;// slew rate in volts/second
disp(Sr,"Slew rate=")

// Result
// slew rate of the op-amp is 2.5 Megavolts/second