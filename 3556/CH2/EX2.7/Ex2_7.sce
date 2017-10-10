clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 2:  Basic Laws 
// Example 2 - 7

clear; clc; close; 
//
// Given data
i   =   3.00; 
R   =   4.00; 
//

// Calculations Current (io)  
io = 3/0.50;          
// Calculations Voltage (vo)
vo = 4*io;            
//
// Display the result
disp("Example 2-7 Solution : ");
printf(" \n io  : Current   = %.3f A ", io);
printf(" \n vo  : Voltage   = %.3f Volt",vo);
