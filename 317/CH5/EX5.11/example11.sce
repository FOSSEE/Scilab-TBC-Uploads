// find maximum allowable series resistance
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 5-11, page 157

clear;clc; close;
	
// Given data
Ilmax=20*10^-3;// maximum load current in amperes 
Vsmin=15;// minimum input voltage in volts 
Vz=6.8;// zener voltage in volts

// Calculations
Rsmax=(Vsmin-Vz)/Ilmax;// maximum series resistance in ohms
disp("ohms",Rsmax,"Series resistance=")

// Result
// maximum series resistance is 410 ohms
