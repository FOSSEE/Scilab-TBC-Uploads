clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  DC Circuits 
// Chapter 1  :  Basic Concepts 
// Example 1 - 3

clear; clc; close; 
//
// Given data
t0 = 1.0000; t1 = 2.0000;                
//
// Calculations Charge Electron
I = integrate('(3*t^2)-t','t',t0,t1); 
// 
disp("Example 1-3 Solution : ");
printf(" \ I = Current                = %.3f C",I)
