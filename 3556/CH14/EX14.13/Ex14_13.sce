clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 14 :  Frequency Response
// Example 14 - 13

clear; clc; close; 
//
// Given data
f1  =  250.0000;
f2  = 3000.0000;
K   =   10.0000;
R   =   20.0000 * 10^3;
Ri  =   10.0000 * 10^3;
//
// Calculations Capacitance of Capacitor C2
C2 = 1/(2*%pi*f1*R) 
// Calculations Capacitance of Capacitor C1
C1 = 1/(2*%pi*f2*R) 
// Calculations Rf 
Rf = (K *(f1 + f2) * Ri)/f2;
// 
disp("Example 14-13 Solution : ");
printf(" \n C2  = Capacitance of Capacitor C2                            = %.3f nanoFarad",C2*10^9)
printf(" \n C1  = Capacitance of Capacitor C1                            = %.3f nanoFarad",C1*10^9)
printf(" \n R   = Resistance of Resistor R                               = %.3f Kilo-ohm",R/1000)
printf(" \n Rf  = Resistance of Resistor Rf                              = %.3f Kilo-ohm",Rf/1000)
printf(" \n Ri  = Resistance of Resistor Ri                              = %.3f Kilo-ohm",Ri/1000)

