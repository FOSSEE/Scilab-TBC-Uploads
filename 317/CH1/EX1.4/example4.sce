// find thevenin voltage and resistance
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 1-4, page 14

clear;clc; close;

// Given data
Vs=72;// source voltage in volts

// Calculations
// open load resistor to get thevenin voltage
Vth=24; // in volts as 8 mA flows through 6Kohms in series with 3Kohms,no current through 4Kohms
// reduce source to zero to get thevenin resistance
Rth=4+((3*6)/(3+6));// in Kohms

disp("Volts", Vth,"Thevenin Voltage =")
disp("ohms",Rth,"Thevenin Resistance =") 

// Result
// Thevenin voltage is 24 volts
// Thevenin resistance is 6 Kohms
