clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 14 :  Frequency Response
// Example 14 - 18

clear; clc; close; 
//
// Given data
f0   =  770.0000;                                                     
f1   =  697.0000;
f2   =  852.0000;
R    =  600.0000;
//
// Calculations Bandwidth
B  = 2*%pi*(f2 - f1);
// Calculations L 
L  = R/B;
// Calculation C 
C  = 1/(4*(%pi)^2*(f0)^2*L);
// 
disp("Example 14-18 Solution : ");
printf(" \n C         = Capacitance of Capacitor                 = %.3f nanoFarad",C*10^9)
printf(" \n L         = Inductance of Inductor                   = %.3f Henry",L)


