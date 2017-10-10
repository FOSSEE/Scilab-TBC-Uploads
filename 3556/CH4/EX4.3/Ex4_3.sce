clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1    :  DC Circuits 
// Chapter 4 :  Circuit Theorems
// Example 4 - 3

clear; clc; close; 
//
// Given data
R1   =   8.00000
R2   =   4.0000;
Vs   =   6.0000;  
Is   =   3.0000;
//
// Calculations V4 for Vs = 6 Volt 
I1   = Vs/(R1+R2);
V1   = R2*I1;
// Calculations V4 for Is = 3 Ampere 
I3   = (R1/(R1+R2))*Is;
V2   = R2*I3;
// Calcucations Total V4
V4   = V1 + V2; 
// Display the result
disp("Example 4-3 Solution : ");
printf(" \n V4     = Voltage For R 4 ohm                  = %.3f Volt",V4)





