clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1    :  DC Circuits 
// Chapter 4 :  Circuit Theorems
// Example 4 - 18

clear; clc; close; 
//
// Given data
Vs  =  220.0000; 
R1  = 1000.0000;   
R3  = 3000.0000;  
R4  =  400.0000; 
R6  =  600.0000;  
Rm  =   40.0000;  
//
// Calculations Rp1
Rp1 = (R1*R3)/(R1 + R3);             
// Calculations Rp2 
Rp2 = (R4*R6)/(R4 + R6);             
// Calculations Rs1  
Rth = Rp1 + Rp2                    
// Calculation Vth 
V1  = (R1/(R1 + R3))*Vs;            
V2  = (R6/(R4+R6))*Vs;              
Vth = V1 -  V2;                      
// Calculation IG
IG = Vth/(Rth + Rm)                 
//
// Display the result
disp("Example 4-18 Solution : ");
printf(" \n IG  = Current Through The Galvanometer      = %.3f mA",IG*1000)



