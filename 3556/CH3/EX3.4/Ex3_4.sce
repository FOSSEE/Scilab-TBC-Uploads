clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 3:  Methods of Analysis
// Example 3 - 4

clear; clc; close; 
//
// Given data
A  = [3.00  -1.00  -2.00; 
      6.00  -1.00  -2.00;
      6.00  -5.00  -16.00];     
A1 = [0.00  -1.00  -2.00; 
     80.00  -1.00  -2.00;
     40.00  -5.00  -16.00];     
A3 = [3.00   0.00  -2.00; 
      6.00  80.00  -2.00;
      6.00  40.00  -16.00];     
A4  = [3.00  -1.00   0.00; 
      6.00  -1.00  80.00;
      6.00  -5.00  40.00];      
// Calculations
// Calculations V1, V2, V3 and V4  
V1 = det(A1)/det(A);           
V2 = V1 - 20.00;                
V3 = det(A3)/det(A);            
V4 = det(A4)/det(A);           
//
// Display the result
disp("Example 3-4 Solution : ");
printf(" \n V1  = Voltage at Node 1        = %.3f Volt",V1)
printf(" \n V2  = Voltage at Node 2        = %.3f Volt",V2)
printf(" \n V3  = Voltage at Node 3        = %.3f Volt",V3)
printf(" \n V4  = Voltage at Node 4        = %.3f Volt",V4)
