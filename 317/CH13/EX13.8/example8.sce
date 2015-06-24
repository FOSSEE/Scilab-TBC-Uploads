// find Q point
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 13-8, page 440

clear; clc; close;

// Given data
Vdd=30;// in volts 
Rd=1*10^3;// drain resistance in ohms
Rs=2*10^3;// source resistance in ohms

// Calculations
// 3:1 voltage divider produces a gate voltage of 10 Volts
Vs=10;// voltage across source resistor in volts
Id=Vs/Rs;// drain current in amperes
Vd=Vdd-(Id*Rd);// drain voltage in volts
Vds=Vd-Vs;// drain-source voltage in volts
disp("Amperes",Id,"Drain current=")
disp("Volts",Vds,"Drain-source Voltage=")


// Result
// Q point is (15,5*10^-3)