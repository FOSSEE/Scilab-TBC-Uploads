// calculate medium source resistance, drain voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 13-6, page 436

clear; clc; close;

// Given data
Vp=4 ;// pinchoff voltage in volts
Idss=10*10^-3 ;// maximum drain current in amperes
Vdd=30;// in volts 
Rd=2*10^3;// drain resistance in ohms

// Calculations
Rds=Vp/Idss;// medium source resistance in ohms
Id=Idss/4 ;// drain current in amperes
Vd=Vdd-(Id*Rd);//  drain voltage in volts
disp("ohms",Rds,"medium source resistance=")
disp("Volts",Vd,"Drain Voltage=")


// Result
// medium source resistance is 400 ohms
// drain voltage is 25 volts