// find drain current,voltage between drain and ground 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 13-10, page 443

clear; clc; close;

// Given data
Vdd=15;// in volts 
Rd=1*10^3;// drain resistance in ohms
Rs=3*10^3;// source resistance in ohms

// Calculations
// 15 Volts occur across source resistor
Vs=15;// voltage across source resistor in volts
Id=Vs/Rs;// drain current in amperes
Vd=Vdd-(Id*Rd);// drain voltage in volts
disp("Amperes",Id,"Drain current=")
disp("Volts",Vd,"Drain Voltage=")


// Result
// Drain current is 5 mAmperes
// Voltage between drain and ground is 10 Volts