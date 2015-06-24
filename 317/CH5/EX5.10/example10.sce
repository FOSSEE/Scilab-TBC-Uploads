// find maximum allowable series resistance
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 5-10, page 157

clear;clc; close;
	
// Given data
Rlmin=140;// minimum load resistance in ohms 
Vsmin=22;// minimum input voltage in volts 
Vz=12;// zener voltage in volts

// Calculations
Rsmax=((Vsmin/Vz)-1)*Rlmin;// maximum series resistance in ohms
disp("ohms",Rsmax,"Series resistance=")

// Result
// maximum series resistance is 117 ohms
