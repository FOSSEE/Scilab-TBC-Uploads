clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  DC Circuits 
// Chapter 1  :  Basic Concepts 
// Example 1 - 9

clear; clc; close; 
//
// Given data
p        =  700.0000
c_base   =   12.0000;
c_100    =   16.0000;
c_200    =   10.0000;
c_300    =    6.0000;
//
// Calculations Electric Bill 
C1 = 12.0000;
C2 = (100 * c_100)/100;
C3 = (200 * c_200)/100;
C4 = (400 * c_300)/100;
Total = C1 + C2 + C3 + C4; 
Average = Total/p;
// 
disp("Example 1-9 Solution : ");
printf(" \n Total    = Total Charge       = %.3f Dollars",Total)
printf(" \n Average  = Average Cost       = %.3f Cents/Kwh",Average*100)
