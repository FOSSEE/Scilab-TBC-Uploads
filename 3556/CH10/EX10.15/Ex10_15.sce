clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 
//
// Part 2     :  AC Circuits 
// Chapter 10 :  Sinusoidal Steady State Analysis
// Example 10 - 15
clear; clc; close;
 
// Given data
R1 = 10000.0000;
R2 = 1.0000 * 10^6;
C  = 1.0000 * 10^-9;
// Calculations Ceg
Ceq = (1+(R2/R1))*C
//
// Display the result
disp("Example 10-15 Solution : ");
printf(" \n Ceq   = C Equivalen          = %.3f Volt",Ceq)
