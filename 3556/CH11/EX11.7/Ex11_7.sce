clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 7

clear; clc; close; 
//
// Given data
t0 = 0.0000; t1 = 2.0000;                
t3 = 2.0000; t4 = 4.0000;              
R  = 2.0000;                          
//
// Calculations I1
I1_rms = integrate('(5*t)^2','t',t0,t1); 
// Calculations I2
I2_rms = integrate('-10^2','t',t4,t3);   
// Calculations I_rms
I_rms  = sqrt(0.2500*(I1_rms + I2_rms)); 
// Calculations Pmax 
Pmax  = (I_rms)^2 * R;                   
//
disp("Example 11-7 Solution : ");
printf(" \n I_rms   = Current RMS                                 = %.3f A",I_rms)
printf(" \n Pmax    = Maximum Average Power Absorbed by Resistor  = %.3f Watt",Pmax)


