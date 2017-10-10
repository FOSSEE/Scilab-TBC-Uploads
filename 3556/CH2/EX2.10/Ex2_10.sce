clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 2:  Basic Laws 
// Example 2 - 10

clear; clc; close; // Clear the work space and console.
//
// Given data
Rac  = 10;
Rcd  = 1; 
Rcb1 = 6; 
Rcb2 = 3; 
Rdb1 = 12;
Rdb2 = 4;
Rdb31 = 1;
Rdb32 = 5;
//
//
// Calculations
// Calculations Rdb3 
Rdb3 = Rdb31 + Rdb32;          
// Calculations Rp1
Rp1 = (Rdb1*Rdb2)/(Rdb1+Rdb2); 
// Calculations Rp2
Rp2 = (Rcb1*Rcb2)/(Rcb1+Rcb2); 
// Calculations Rp3
Rp3 = (Rp1*Rdb3)/(Rp1+Rdb3);   
// Calculations Rs1
Rs1 = Rcd + Rp3;              
// Calculations Rp4
Rp4 = (Rp2*Rs1)/(Rp2+Rs1);    
// Calculations Resistance Equivalent 
Reg = Rac + Rp4;             
//
// Display the result
disp("Example 2-10 Solution : ");
printf(" \n Rdb3 = Rdb31 Series Rdb32       = %.3f ohm",Rdb3)
printf(" \n Rp1  = Rdb1 Parallel Rdb2       = %.3f ohm",Rp1)
printf(" \n Rp2  = Rcb1 Parallel Rcb2       = %.3f ohm",Rp2)
printf(" \n Rp3  = Rp1 Parallel Rdb3        = %.3f ohm",Rp3)
printf(" \n Rs1  = Rcd Series Rp3           = %.3f ohm",Rs1)
printf(" \n Rp4  = Rp2 Parallel Rs1         = %.3f ohm",Rp4)
printf(" \n Reg  = Rac + Rp4                = %.3f ohm",Reg)

