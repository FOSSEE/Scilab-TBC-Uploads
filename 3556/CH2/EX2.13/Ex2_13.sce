clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 2:  Basic Laws 
// Example 2 - 13

clear; clc; close; 
//
// Given data
I    = 30.00/1000; 
R6   =  6.00*1000;   
R12  = 12.00*1000;  
R9   =  9.00*1000; 
//
// Calculations
// Calculations RP1 
RP1 = (R6 + R12);                 
// Calculations current branch 1
I1   =  (RP1/(RP1+ R9))* I;       
// Calculations current branch 2
I2   =  (R9/(RP1 + R9))* I;      
// Calcukations Vo
Vo   =   R9*I1                   
// Calculatiuons Po 
Po = Vo * I;                     
// Calculations P9
P9 = (I1^2)*R9;                  
// Calculations P6
P6 = (I2^2) * R6;                 
// Calculations P12
P12 = (I2^2) * R12;               
//
// Display the result
disp("Example 2-13 Solution : ");
printf(" \n Vo  : Voltage in the 9 Ohm Resistor          = %.3f Volt ",Vo);
printf(" \n Po  : Power supllied by the source           = %.3f Watt ",Po);
printf(" \n P9  : Power absorbed in the 9 ohm resistor   = %.3f Watt ",P9);
printf(" \n P6  : Power absorbed in the 6 ohm resistor   = %.3f Watt ",P6);
printf(" \n P12 : Power absorbed in the 12 ohm resistor  = %.3f Watt ",P12);


