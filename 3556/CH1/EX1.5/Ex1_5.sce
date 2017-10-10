clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  DC Circuits 
// Chapter 1  :  Basic Concepts 
// Example 1 - 5

clear; clc; close; 
//
// Given data
t       =     0.0030;                
i       =    5*cos(60*%pi*t); 
//
// Calculations Voltage and Power for v = 3i
v_a  = 3*i;
P_a  = v_a*i;
// Calculation Voltage and Power for v = 3di/dt 
v_b = -900*%pi*sin(60*%pi*t)
P_b = v_b*i;
// 
disp("Example 1-5 Solution : ");
disp("a. Voltage and Power for v = 3i: ");
printf(" \n v_a = Voltage           = %.3f Volt",v_a)
printf(" \n P_a = Power             = %.3f Watt",P_a)
disp("")
disp("b. Voltage and Power for v = 3di/dt: ");
printf(" \n v_b = Voltage           = %.3f Volt",v_b)
printf(" \n P_b = Power             = %.3f Watt",P_b)
