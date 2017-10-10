clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 2:  Basic Laws 
// Example 2 - 5

clear; clc; close; 
//
// Given data
v   =   20.00; 
R1  =    2.00; 
R2  =    3.00; 
//
// Calculations Current  
i = v/(R1 + R2);       
// Calculations  Voltage (v1)
v1 = i * R1;           
// Calculations  Voltage (v2)
v2 = i * R2;            
//
// Display the result
disp("Example 2-5 Solution : ");
printf(" \n i  : Current   = %.3f A ", i);
printf(" \n v1 : Voltage   = %.3f Volt",v1);
printf(" \n v2 : Voltage   = %.3f Volt",v2);
