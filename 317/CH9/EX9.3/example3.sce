// find maximum small signal emitter current 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 9-3, page 297

clear;clc; close;

// Given data
Vee=2;// in volts
Vbe=0.7;// in volts
Re=1*10^3;// in ohms

// Calculations
Ieq=(Vee-Vbe)/Re;// Q point emitter current in amperes
ieppmax=0.1*Ieq;// maximum small signal emitter current in amperes
disp(ieppmax,"maximum small signal emitter current")

// Result
// Maximum small signal emitter current is 130 microApp.
