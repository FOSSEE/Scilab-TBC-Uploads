clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  AC Circuits 
// Chapter 13 :  Magnetically Couple Circuits
// Example 13 - 16

clear; clc; close; 
//
// Given data
Zth = 192.0000;
ZL  =  12.0000;
//
// Calculations n 
n = sqrt(ZL/Zth);
//
// Display the result
disp("Example 13-16 Solution : ");
printf(" \n n  = Turns Ratio Speaker  = %.3f  turn",n)

