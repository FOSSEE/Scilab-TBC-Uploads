clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 3:  Methods of Analysis
// Example 3 - 1

clear; clc; close; 
//
// Given data
I1   = 5.00;   
I4   = 10.00;  
R2   =  4.00;  
R3   =  2.00;  
R5   =  6.00;  
A = [3.00  -1.00; -3.00   5.00];     
A1= [20.00 -1.00; 60.00   5.00];     
A2 =[3.00  20.00; -3.00  60.00];     
//
// Calculations
// Calculations V1 and V2  
V1 = det(A1)/det(A);                
V2 = det(A2)/det(A);               
// Calculations I2, I3, I5
I2 = (V1 - V2)/R2;                   
I3 = V1/R3;                          
I5 = V2/R5;                        
//
// Display the result
disp("Example 3-1 Solution : ");
printf(" \n V1  = Voltage V1        = %.3f Volt",V1)
printf(" \n V2  = Voltage V2        = %.3f Volt",V2)
printf(" \n I1  = Current I1        = %.3f A",I1)
printf(" \n I2  = Current I2        = %.3f A",I2)
printf(" \n I3  = Current I3        = %.3f A",I3)
printf(" \n I4  = Current I4        = %.3f A",I4)
printf(" \n I5  = Current I5        = %.3f A",I5)



