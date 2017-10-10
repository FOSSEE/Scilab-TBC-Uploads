clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 3:  Methods of Analysis
// Example 3 - 6

clear; clc; close; 
//
// Given data
A  = [11.00 -5.00   -6.00; 
     -5.00  19.00   -2.00;
     -1.00  -1.00    2.00];     
A1 = [12.00 -5.00   -6.00; 
      0.00  19.00   -2.00;
      0.00  -1.00    2.00];     
A2 = [11.00 12.00   -6.00; 
     -5.00   0.00   -2.00;
     -1.00   0.00    2.00];      
A3 = [11.00 -5.00   12.00; 
     -5.00  19.00    0.00;
     -1.00  -1.00    0.00];     
//
// Calculations
// Calculations I1, I2 and I3  
I1 = det(A1)/det(A);            
I2 = det(A2)/det(A);           
I3 = det(A3)/det(A);            
//
// Display the result
disp("Example 3-6 Solution : ");
printf(" \n I1  = Current for mesh 1        = %.3f A",I1)
printf(" \n I2  = Current for mesh 2        = %.3f A",I2)
printf(" \n I3  = Current for mesh 3        = %.3f A",I3)

