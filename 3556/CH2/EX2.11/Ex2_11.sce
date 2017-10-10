clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 2:  Basic Laws 
// Example 2 - 11

clear; clc; close; 
//
// Given data
G12  = 12.00;
G8   = 8.00; 
G5   = 5.00; 
G6   = 6.00; 
//
// Calculations
// Calculations RP1
GP1 = G12 + G8;                
// Calculations GS1
GS1 = (GP1*G5)/(GP1 + G5);     
// Calculations Reg
Geg = (GS1 + G6);              
//
// Display the result
disp("Example 2-11 Solution : ");
printf(" \n GP1  = G12 Parallel G8       = %.3f mho",GP1)
printf(" \n GS1  = GP1 Series G5         = %.3f mho",GS1)
printf(" \n Geg  = GS1 Parallel G6       = %.3f mho",Geg)

