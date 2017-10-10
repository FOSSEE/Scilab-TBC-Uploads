clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  DC Circuits 
// Chapter 1  :  Basic Concepts 
// Example 1 - 2

clear; clc; close; 
//
// Given data
t = 0.5000;
//
// Calculations Current
i = 5 * sin(4*%pi*t) + 20*%pi*t*cos(4*%pi*t);
// 
disp("Example 1- 2 Solution : ");
printf(" \n i = Current                  = %.10f mA",i)
