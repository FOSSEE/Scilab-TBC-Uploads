clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 14 :  Frequency Response
// Example 14 - 19

clear; clc; close; 
//
// Given data
fc   = 2500.0000;                                                     
R1   =    6.0000;
R2   = R1;
//
// Calculations C for Highpass Filter 
C = 1/(2*%pi*fc*R1)
// Calculations L for Lowpass Filter 
L = R2/(2*%pi*fc)
// 
disp("Example 14-19 Solution : ");
printf(" \n C         = Capacitance of Capacitor                 = %.3f mikroFarad",C*10^6)
printf(" \n L         = Inductance of Inductor                   = %.3f mikrohenry",L*10^6)


