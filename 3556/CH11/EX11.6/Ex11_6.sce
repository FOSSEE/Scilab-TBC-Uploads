clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 6

clear; clc; close; 
//
// Given data
V_mag   = 150.0000;                                                     
V_angle =  30.0000;                   
Z1 = complex(40,-30)                  
Z2 = complex(0,20)                   
//
// Calculations Zth
Zth = (Z1*Z2)/(Z1 + Z2)                                               
// Calculation Vth
Vth = (Z2/(Z1 + Z2))*complex(V_mag*cosd(30.0000),V_mag*sind(30.0000)); 
Vth_mag = norm(Vth);                                                    
Vth_angle = atand(imag(Vth)/real(Vth));                                
// Calculations Resistance of Load Impedance 
RL = norm(Zth);                      
// Calculation Maximum Average Power 
I = Vth/(Zth + complex(RL,0));       
I_mag = norm(I);                      
Pmax = 0.500 * (I_mag)^2 * RL;        
//
disp("Example 11-5 Solution : ");
printf(" \n RL   = Resistance of Load Impedance                 = %.3f Ohm",RL)
printf(" \n Pmax = Maximum Average Power Absorbed by Resistor   = %.3f Watt",Pmax)


