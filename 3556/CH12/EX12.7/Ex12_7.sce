clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 12 :  Three Phase Circuit 
// Example 12 - 7

clear; clc; close; 
//
// Given data
P_motor   = 5600.0000;                               
VL_motor  =  220.0000;                               
IL_motor  =   18.200;                                
//
// Calculations Complex Power Motor 
S_motor   = (3)^0.5*VL_motor*IL_motor;
// Calculations Power Factor Motor 
pf_motor = (P_motor/S_motor);
//
disp("Example 12-7 Solution : ");
printf(" \n Pf    = Power Factor Motor       = %.3f ",pf_motor)






