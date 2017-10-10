clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1    :  DC Circuits 
// Chapter 4 :  Circuit Theorems
// Example 4 - 6

clear; clc; close; 
//
// Given data
R2   =   2.00000;
R4   =   4.0000;
R8   =   8.0000;
R3   =   3.0000;
Vs   =  12.0000;  
Is1  =   2.0000;
//
// Calculations R6 = R2 Series R4
R6   = R2 + R4; 
// Calculations Is2 
Is2  = Vs/R6;
// Calculations Rp1 = R3 Parallel R6
Rp1  = (R6*R3)/(R6+R3);
// Calculations Vo
Vo = ((Rp1*R8)/(Rp1+R8))*Is1
// Display the result
disp("Example 4-6 Solution : ");
printf(" \n Vo    = Voltage For R 8 ohm                  = %.3f Volt",Vo)





