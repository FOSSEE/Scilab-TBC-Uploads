// find the constant k value and drain current of E-MOSFET 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 14-13, page 506

clear; clc; close;

// Given data
// 2N7000
Idon=600*10^-3 ;// in amperes
Vgson=4.5;// from data sheet in volts 
Vgsth=2.1;// from data sheet in volts
Vgs1=3 ;// gate source voltage in volts
Vgs2=4.5 ;// gate source voltage in volts

// Calculations
k=Idon/([Vgson-Vgsth]^2)
Id1=k*([Vgs1-Vgsth]^2)
Id2=k*([Vgs2-Vgsth]^2)
disp(k,"constant=")
disp("amperes",Id1,"drain current 1=")
disp("amperes",Id2,"drain current 2=")

// Result
// Constant k is 104 mAmperes/Volts^2
// Drain current when Vgs is 3 Volts is 84.4 mAmperes 
// Drain current when Vgs is 4.5 Volts is 600 mAmperes