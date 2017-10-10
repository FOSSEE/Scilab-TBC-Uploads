clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1    :  DC Circuits 
// Chapter 4 :  Circuit Theorems
// Example 4 - 17

clear; clc; close; 
// Given data
R1  = 500.0000;  
R2  = 125.0000;  
R3  = 200.0000;  
//
// Calculations Rx 
Rx = (R3/R1)*R2;            // Rx = Resistance x 
//
// Display the result
disp("Example 4-17 Solution : ");
printf(" \n Rx  = Resistance X            = %.3f Ohm",Rx)



