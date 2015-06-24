// find drain current,drain voltage 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 13-11, page 444

clear; clc; close;

// Given data
Vdd=10;// in volts 
Vee=5;// in volts 
Rd=1*10^3;// drain resistance in ohms
Re=2*10^3;// source resistance in ohms

// Calculations
Id=(Vee-0.7)/Re;// drain current set up by bipolar junction transistor in amperes
Vd=Vdd-(Id*Rd);// drain voltage in volts
disp("Amperes",Id,"Drain current=")
disp("Volts",Vd,"Drain Voltage=")

// Result
// Drain current is 2.15 mAmperes
// Drain voltage is 7.85 Volts