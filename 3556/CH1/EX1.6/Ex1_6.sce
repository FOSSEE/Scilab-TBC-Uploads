clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  DC Circuits 
// Chapter 1  :  Basic Concepts 
// Example 1 - 6

clear; clc; close; 
//
// Given data
t       =     2.0000;                
p       =   100.0000; 
//
// Calculations Energy Bulb 
W_kj = p*t*60*60;
W_h  = p*t;
// 
disp("Example 1-6 Solution : ");
printf(" \n W_kj = Energy Bulb        = %.3f Kilo - Joule",W_kj/1000)
printf(".\n W_h  = Energy Bulb        = %.3f Watt - Hour",W_h)

