clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 14 :  Frequency Response
// Example 14 - 11

clear; clc; close; 
//
// Given data
fb       =  100.0000;
fo       =  200.0000;
R        =  150.0000;
//
// Calculations Inductance of Inductor 
B = 2*%pi*fb;
L = R/B
// Calculations Capacitance of Capacitor 
Wo = 2 * %pi * fo
C = 1/((Wo^2)*L)
// 
disp("Example 14-12 Solution : ");
printf(" \n L  = Inductance of Inductor                     = %.3f H",L)
printf(" \n C  = Capacitance of Capacitor                   = %.3f mikro - Farad",C*10^6)
