clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1    :  DC Circuits 
// Chapter 4 :  Circuit Theorems
// Example 4 - 13

clear; clc; close; 
//
// Given data
R2   =  2.00;  
R3   =  3.00;  
R6   =  6.00;  
R12  = 12.00;  
Vth  = 22.00;  
//
// Calculations
// Series R2 and R3  
Rs1 = R2 + R3;                       
// Parallel R6 and R12
Rp1 = (R6*R12)/(R6 + R12);           
// Resistance Total
Rt = Rs1 + Rp1;                      
// Calculations Maximum Power
Pmax = (Vth^2)/(4*Rt); 
//
// Display the result
disp("Example 4-13 Solution : ");
printf(" \n Rth   = Rl                 = %.3f Ohm",Rt)
printf(" \n Pmax  = Maximum Power      = %.3f Watt",Pmax)





