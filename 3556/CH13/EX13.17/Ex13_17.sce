clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  AC Circuits 
// Chapter 13 :  Magnetically Couple Circuits
// Example 13 - 17

clear; clc; close; 
//
// Given data
Vp  = 2400.0000;
Vs  =  240.0000;
Ns  =   72.0000;
P_bulbs = 100.0000;
P_TV = 350.0000;
P_Kitchen = 15000.0000;
n_bulbs = 8;
//
// Calculations Np
Np = Ns *(Vp/Vs)
// Calculations Ip 
P = (n_bulbs*P_bulbs)+ P_TV + P_Kitchen; 
Ip = P/Vp;

// Display the result
disp("Example 13-17 Solution : ");
printf(" \n a. n  = Turns Ratio Speaker             = %.3f  turn",Np)
printf(" \n b. Ip = Current In The Primary Winding  = %.3f  A",Ip)

