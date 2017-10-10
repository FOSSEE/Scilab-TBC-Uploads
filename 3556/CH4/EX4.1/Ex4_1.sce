clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1    :  DC Circuits 
// Chapter 4 :  Circuit Theorems
// Example 4 - 1

clear; clc; close; 
//
// Given data
R    =  76.00000
Vs1  =  12.0000;
Vs2  =  24.0000;  
//
// Calculations Io for Vs = 12.0000 
I21   = Vs1/R;
Io_1  = I21;
// Calculations Io for Vs = 24.0000 
I22   = Vs2/R;
Io_2  = I22; 
//
// Display the result
disp("Example 4-1 Solution : ");
printf(" \n Io_1   = Current Io For Vs 12 Volt            = %.3f A",Io_1)
printf(" \n Io_2   = Current Io For Vs 24 Volt            = %.3f A",Io_2)





