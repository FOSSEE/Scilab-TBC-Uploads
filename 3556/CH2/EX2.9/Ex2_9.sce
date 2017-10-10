clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 2:  Basic Laws 
// Example 2 - 9

clear; clc; close; 
//
// Given data
R1 = 5; 
R2 = 1; 
R3 = 2; 
R4 = 6; 
R5 = 3; 
R6 = 8; 
R7 = 4; 
//
// Calculations
// R1 Series R2 
Rs1 = R1 + R2; 
// R4 Parallel R5
Rp1 = (R4*R5)/(R4+R5); 
// R3 Series Rp1
Rs2 = R3 + Rp1; 
// Rs2 Parallel Rs1
Rp2 = (Rs1*Rs2)/(Rs1+Rs2); 
// Rp2 Series R6 and R7  
Reg = R6 + Rp2 + R7; 
//
// Display the result
disp("Example 2-9 Solution : ");
printf(" \n Rs1 = R1 Series R2      = %.3f ohm",Rs1)
printf(" \n Rp1 = R4 Parallel R5    = %.3f ohm",Rp1)
printf(" \n Rs2 = R3 Parallel Rp1   = %.3f ohm",Rs2)
printf(" \n Rp2 = Rs1 Parallel Rs1  = %.3f ohm",Rp2)
printf(" \n Reg = R6 + Rp2 + R7     = %.3f ohm ",Reg);

