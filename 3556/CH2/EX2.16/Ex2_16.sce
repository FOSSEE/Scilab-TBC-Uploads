clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 2:  Basic Laws 
// Example 2 - 16

clear; clc; close; 
//
// Given data
V    =   9.00;       
p1   =  20.00;       
p2   =  15.00;     
p3   =  10.00;      
//
// Calculations 
// Calculations Ptot
Ptot = p1 + p2 + p3          
// Calculations Itot
Itot = Ptot/V;              
// Calculations I1
I1   = p1/V;                 
// Calculations I2 and I3 
I2   = Itot - I1;           
I3   = I2;  //               
// Calculations R1 
R1   = p1/(I1^2);         
// Calculations R2 
R2   = p2/(I2^2);           
// Calculations R3 
R3   = p3/(I3^2);           
// Display the result
disp("Example 2-16 Solution : ");
printf(" \n I   : Total current supplied the battery  = %.3f A ",Itot);
printf(" \n I1  : Current Through bulb 1              = %.3f A ",I1);
printf(" \n I2  : Current Through bulb 2              = %.3f A ",I2);
printf(" \n I3  : Current Through bulb 3              = %.3f A ",I3);
printf(" \n R1  : Resistance bulb 1                   = %.3f Ohm ",R1);
printf(" \n R2  : Resistance bulb 2                   = %.3f Ohm ",R2);
printf(" \n R3  : Resistance bulb 3                   = %.3f Ohm ",R3);





