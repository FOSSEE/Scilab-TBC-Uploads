// to find base current
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 6-4, page 197

 clear;clc; close;

// Given data
Bdc=200;// current gain
Vbb=2;// base source voltage in volts
Vbe=0.7;// emitter diode in volts
Rb=100*10^3;// resistance in ohms 

// Calculations
Ib=(Vbb-Vbe)/Rb;// current through base resistor in amperes
Ic=Ib*Bdc;// collector current in amperes
disp("Amperes",Ic,"collector current =")

// Result
// collector current is 2.6mAmperes
