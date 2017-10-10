clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  AC Circuits 
// Chapter 13 :  Magnetically Couple Circuits
// Example 13 - 7

clear; clc; close; 
//
// Given data
V1 =  2400.0000;
V2 =   120.0000;
N2 =    50.0000;
S  =  9600.0000;
//
// Calculations Turn Ratio 
n  = V2/V1;
// Calculations the Number of Turn on The Primary Side 
N1 = N2/n;
// Calculations Current I1
I1 = S/V1;
// Calculation Currwent I2
I2 = I1/n;
//
// Display the result
disp("Example 13-9 Solution : ");
printf(" \n n      = Turn Ratio                              = %.3f ",n)
printf(" \n N1     = The Number of Turn on The Primary Side  = %.3f turns",N1)
printf(" \n I1     = Magnitude of Current I1                 = %.3f A",I1)
printf(" \n I2     = Magnitude of Current I2                 = %.3f A",I2)
