clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 2:  Basic Laws 
// Example 2 - 17

clear; clc; close;
//
// Given data
V1   =   1.00;       
V2   =   5.00;       
V3   =  50.00;       
V4   = 100.00;       
Rm   = 2000.00       
Ifs  = 0.00010       
//
// Calculations 
// Calculations R1
R1 = (V1/Ifs) - Rm;           
// Calculations R2
R2 = (V2/Ifs) - Rm;           
// Calculations R3
R3 = (V3/Ifs) - Rm;           
// Calculations R4
R4 = (V4/Ifs) - Rm;          
// Display the result
disp("Example 2-17 Solution : ");
printf(" \n R1  : Resistance for range 0 - 1 volt     = %.3f Kilo-ohm ",R1/1000);
printf(" \n R2  : Resistance for range 0 - 5 volt     = %.3f Kilo-ohm ",R2/1000);
printf(" \n R3  : Resistance for range 0 - 50 volt    = %.3f Kilo-ohm ",R3/1000);
printf(" \n R4  : Resistance for range 0 - 100 volt   = %.3f Kilo-ohm ",R4/1000);

