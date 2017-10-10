clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 14 :  Frequency Response
// Example 14 - 12

clear; clc; close; 
//
// Given data
fc       =  500.0000;
DC_gain  =    4.0000;
Cf       =    0.2000 * 10^(-6)
//
// Calculations Resistance of Resistor
Rf = 1/(2*%pi*fc*Cf); 
// Calculations Resistance of Resistor
Ri = Rf/DC_gain;
// 
disp("Example 14-12 Solution : ");
printf(" \n Rf  = Resistance of Resistor Rf                              = %.3f Kilo-ohm",Rf)
printf(" \n Ri  = Resistance of Resistor Ri                              = %.3f Kilo-ohm",Ri)

