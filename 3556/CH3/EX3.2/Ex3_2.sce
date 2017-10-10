clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 3:  Methods of Analysis
// Example 3 - 2

clear; clc; close; 
//
// Given data
A  = [3.00 -2.00 -1.00; 
     -4.00  7.00 -1.00;
      2.00 -3.00  1.00];     
A1 = [12.00 -2.00 -1.00; 
      0.00   7.00 -1.00;
      0.00  -3.00  1.00];    
A2 = [3.00  12.00 -1.00; 
     -4.00   0.00 -1.00;
      2.00   0.00  1.00];        
A3 = [3.00  -2.00  12.00; 
     -4.00   7.00  0.00;
      2.00  -3.00  0.00];    
//
// Calculations
// Calculations V1, V2 and V3  
V1 = det(A1)/det(A);         
V2 = det(A2)/det(A);          
V3 = det(A3)/det(A);          
//
// Display the result
disp("Example 3-2 Solution : ");
printf(" \n V1  = Voltage at Node 1        = %.3f Volt",V1)
printf(" \n V2  = Voltage at Node 2        = %.3f Volt",V2)
printf(" \n V3  = Voltage at Node 3        = %.3f Volt",V3)
