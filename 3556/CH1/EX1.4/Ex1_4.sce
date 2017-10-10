clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  DC Circuits 
// Chapter 1  :  Basic Concepts 
// Example 1 - 4

clear; clc; close; 
//
// Given data
i       =     2.0000;                
delta_t =    10.0000; 
delta_w =  2300.0000
//
// Calculations Voltage Drops 
delta_q = i * delta_t;
v       = delta_w/delta_q;
// 
disp("Example 1-4 Solution : ");
printf(" \ v = Voltage Drop Acroos The Bulb        = %.3f Volt",v)
