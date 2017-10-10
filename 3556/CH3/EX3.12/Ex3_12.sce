clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 3:  Methods of Analysis
// Example 3 - 12

clear; clc; close; 
// Given data
Vs   = 4.00       
VBE  = 0.70       
Rb   = 20000.00   
beta = 50.00      
//
// Calculations
// Calculations Ib
Ib = ((Vs - VBE)/Rb)*10^6;
// Calculations Ic 
Ic = beta * Ib;
// Calculations Vo 
Vo = 6.00 - 100*Ic;
//
// Display the result
disp("Example 3-12 Solution : ");
printf(" \n Ib  = Current basis                = %.3f A",Ib)
printf(" \n Ic  = Current collector            = %.3f A",Ic)
printf(" \n Vo  = Voltage collector - emitter  = %.3f A",Vo)

