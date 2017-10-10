clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 2:  Basic Laws 
// Example 2 - 14

clear; clc; close; 
//
// Given data
Ra = 15;     
Rb = 10;    
Rc = 25;     

//
// Calculations
// Convert Delta Network to Equivalent Y Network 
// Calculations Rtot
Rtot = Ra + Rb + Rc;   
// Calculations R1
R1   = (Rb*Rc)/Rtot;
// Calculations R2
R2   = (Rc*Ra)/Rtot;  
// Calculations R3
R3   = (Ra*Rb)/Rtot; 
//
// Display the result
disp("Example 2-14 Solution : ");
printf(" \n R1 : Resistance  1        = %.3f Ohm ", R1);
printf(" \n R2 : Resistance  2        = %.3f Ohm ", R2);
printf(" \n R3 : Resistance  3        = %.3f ohm ", R3);
