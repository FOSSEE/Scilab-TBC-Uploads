clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 2:  Basic Laws 
// Example 2 - 2

clear; clc; close; 
//
// Given data
v  =   30.00; 
R  = 5000.00; 
//
// Calculations Current  
i = v/R;      
// Calculations Conductance 
G = 1/R; 
// Calculation Power p1
p1 = v*i;          
// Calculation Power p2  - Various Way 
p2 = (i^2)*R;      
// Calculation Power p3  - Various Way 
p3 = (v^2)*G;      
//
// Display the result
disp("Example 2-2 Solution : ");
printf(" \n i  : Current = %.3f A ", i);
printf(" \n P  : Power   = %.3f Watt",p1);
printf(" \n P  : Power   = %.3f Watt ",p2);
printf(" \n P  : Power   = %.3f Watt ",p3);
// 
disp("Another Solution     : ");
printf(" \n i  : Current = %.3f mA ", i*1000);
printf(" \n P  : Power   = %.3f mWatt",p1*1000);
printf(" \n P  : Power   = %.3f mWatt ",p2*1000);
printf(" \n P  : Power   = %.3f mWatt ",p3*1000);
