clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 8

clear; clc; close; // Clear the work space and console.
//
// Given data
t0 = 0.0000; t1 = %pi;                   
t3 = %pi;    t4 = 2*%pi;               
R  = 10.0000;                           
//
// Calculations V1_rms
V1_rms = integrate('(10*sin(t))^2','t',t0,t1); 
// Calculations V2_rms
V2_rms = integrate('0^2','t',t4,t3);           
// Calculations I_rms
V_rms_1  = (V1_rms + V2_rms);                  
V_rms = sqrt((1/(2*%pi))*V_rms_1);
// Calculations Pmax 
Pmax  = (V_rms)^2/R;                           
//
disp("Example 11-7 Solution : ");
printf(" \n V_rms   = Voltage RMS                                 = %.3f A",V_rms)
printf(" \n Pmax    = Maximum Average Power Absorbed by Resistor  = %.3f Watt",Pmax)


