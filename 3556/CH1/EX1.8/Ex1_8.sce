clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  DC Circuits 
// Chapter 1  :  Basic Concepts 
// Example 1 - 8

clear; clc; close; 
//
// Given data
e  =  1.6000 * 10^(-19)
n   = 10^15;
p   = 4.0000;
//
// Calculations Current
i = n*e;
// Calculations Voltage 
vo = p/i;
// 
disp("Example 1-8 Solution : ");
printf(" \n v  = Voltage       = %.3f KV",vo/1000)
