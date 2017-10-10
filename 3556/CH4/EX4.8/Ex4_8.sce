clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1    :  DC Circuits 
// Chapter 4 :  Circuit Theorems
// Example 4 - 
8
clear; clc; close; 
//
// Given data
R4   =   4.00000;
R12  =  12.0000;
R1   =   1.0000;
Vs   =  32.0000;  
Is   =  -2.0000;
RL1  =   6.0000;
RL2  =  16.0000;
RL3  =  36.0000;
//
// Calculations Rth
Rth1  = (R4*R12)/(R4+R12);
Rth   = R1 + Rth1;
// Calculations Vth 
I1  = (Vs + (R12*Is))/(R4+R12)
I2  = Is;
Vth = R12*(I1-I2)
// Calculation IL1 for RL = 6 Ohm 
IL1 = Vth/(Rth + RL1)
// Calculation IL2 for RL = 16 Ohm 
IL2 = Vth/(Rth + RL2)
// Calculation IL3 for RL = 36 Ohm 
IL3 = Vth/(Rth + RL3)
// Display the result
disp("Example 4-8 Solution : ");
printf(" \n Vth    = Voltage Thevenin                  = %.3f Volt",Vth)
printf(" \n Rth    = Resistance Thevenin               = %.3f Ohm",Rth)
printf(" \n IL1    = Load Current For RL 6 Ohm         = %.3f A",IL1)
printf(" \n IL2    = Load Current For RL 16 Ohm        = %.3f A",IL2)
printf(" \n IL3    = Load Current For RL 36 Ohm        = %.3f A",IL3)




