clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1    :  DC Circuits 
// Chapter 4 :  Circuit Theorems
// Example 4 - 16

clear; clc; close; 
//
// Given data
Voc  = 12.4000;  
VL   = 12.0000;  
PL   =  2.0000;  
RL1 = 8.0000;    
// Part a
// Calculations Vs 
Vs = Voc;                  
// Calculations RL
RL = (VL)^2/(PL);          
// Calculations IL
IL = VL/RL;                
// Calculation Internal Resistance
Rs = (Voc - VL)/IL;;       
//
// Part b
// Calculations V
V8 = (RL1/(Rs + RL1))*Vs;
//
// Display the result
disp("Example 4-16 Solution : ");
printf(" Part a")
printf(" \n Vs  = Source Voltage          = %.3f Volt",Vs)
printf(" \n Rs  = Resistance Internal     = %.3f Ohm",Rs)
printf(" \n Part b")
printf(" \n V8  = Load Voltage With 8 Ohm = %.3f Volt",V8)




