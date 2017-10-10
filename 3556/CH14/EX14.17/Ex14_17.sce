clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 14 :  Frequency Response
// Example 14 - 17

clear; clc; close; 
//
// Given data
f0_upper  =  1600.0000 * 10^3;                                                     
f0_lower  =   540.0000 * 10^3;
L         =     10^-6
//
// Calculations C1 The High End of The AM Band 
C1  = 1/(4*(%pi)^2*(f0_upper)^2*L);
// Calculations C1 The Low End of The AM Band 
C2  = 1/(4*(%pi)^2*(f0_lower)^2*L);
// 
disp("Example 14-18 Solution : ");
printf(" \n C1  = Capacitance of Capacitor The High End of The AM Band   = %.3f nanoFarad",C1*10^9)
printf(" \n C2  = Capacitance of Capacitor The Low End of The AM Band    = %.3f nanoFarad",C2*10^9)



