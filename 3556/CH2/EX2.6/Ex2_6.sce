clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 2:  Basic Laws 
// Example 2 - 6

clear; clc; close; 
//
// Given data
v1  = -12.00; 
v2  =  -4.00; 
R1  =   4.00; 
R2  =   6.00; 
//
//  vo = -6i
//  2vo = -12i
// Calculations Current  
v = -(v1 + v2);            
i = v/(R1 + R2 - 12);       
// Calculations  Voltage (v0)
vo = -6*i;                  
//
// Display the result
disp("Example 2-6 Solution : ");
printf(" \n i  : Current   = %.3f A ", i);
printf(" \n v1 : Voltage   = %.3f Volt",vo);
