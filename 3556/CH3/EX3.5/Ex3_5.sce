clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 3:  Methods of Analysis
// Example 3 - 5

clear; clc; close; 
//
// Given data

A = [3.00  -2.00; 
    -1.00   2.00];    
A1= [1.00  -2.00; 
     1.00   2.00];    
A2 =[3.00   1.00;
    -1.00   1.00];     
//
// Calculations
// Calculations I1 and I2  
I1 = det(A1)/det(A);   
I2 = det(A2)/det(A);   
//
// Display the result
disp("Example 3-5 Solution : ");
printf(" \n I1  = Current for mesh I1        = %.3f A",I1)
printf(" \n I2  = Current for mesh I2        = %.3f A",I2) 



