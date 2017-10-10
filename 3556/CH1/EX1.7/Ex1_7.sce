clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  DC Circuits 
// Chapter 1  :  Basic Concepts 
// Example 1 - 7

clear; clc; close; 
//
// Given data
V1      =    20.0000;                
V2      =    12.0000;
V3      =     8.0000;
I1      =     5.0000; 
I2      =     6.0000;
//
// Calculations Power 1
P1 = -V1*I1
// Calculations Power 2
P2 =  V2*I1;
// Calculations Power 3 
P3 =  V3*I2;
// Calculations Power 4 
P4 =  8*(-0.2*I1)
// 
disp("Example 1-7 Solution : ");
printf(" \n P1 = Power Supplied       = %.3f Watt",P1)
printf(".\n P2 = Power Absorbed       = %.3f Watt",P2)
printf(".\n P3 = Power Absorbed       = %.3f Watt",P3)
printf(".\n P4 = Power Supplied       = %.3f Watt",P4)
