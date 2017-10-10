clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  DC Circuits 
// Chapter 2:  Basic Laws 
// Example 2 - 12

clear; clc; close; 
//
// Given data
V    = 12.00; 
R4   = 4.00;  
R6   = 6.00;  
R3   = 3.00; 
//
// Calculations
// Calculations RP1 
RP1 = (R3*R6)/(R3 + R6);         
// Calculations Total Current 
I   =  V/(RP1+R4);             
// Calculations Vo 
Vo = (RP1/(RP1+R4))*V          
// Calcukations Io
Io = Vo/R3;                    
// Calculatiuons power dissipated in the 3 ohm resistor 
Po = Vo * Io;                   
//
// Display the result
disp("Example 2-12 Solution : ");
printf(" \n Vo : Voltage in the 3 Ohm Resistor          = %.3f Volt ", Vo);
printf(" \n Io : Current in the 3 Ohm Resistor          = %.3f Ampere ", Io);
printf(" \n Po : Power Dissipated in the 3 Ohm Resistor = %.3f Watt ", Po);




