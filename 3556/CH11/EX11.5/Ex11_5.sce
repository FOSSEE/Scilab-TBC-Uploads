clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 5

clear; clc; close; 
//
// Given data
V_mag   = 10.0000;                                                     
V_angle =  0.0000;                  
Z1 = complex(0,5)                    
Z2 = complex(8,-6)                   
Z3 = complex(4,0)                   
//
// Calculations Zth
Zth1 = (Z2*Z3)/(Z2 + Z3)
Zth  = Zth1 + Z1                                                       
// Calculation Vth
Vth = (Z2/(Z2 + Z3))*complex(V_mag*cosd(0.0000),V_mag*sind(0.0000));  
Vth_mag = norm(Vth)                                                    
Vth_angle = atand(imag(Vth)/real(Vth));                                 
// Calculations Load Impedance 
ZL = conj(Zth);                        
ZL_Real = real(ZL);                      
ZL_Imag = imag(ZL);                     
// Calculation Maximum Average Power 
Pmax = (Vth_mag)^2/(8*real(Zth))       
//
disp("Example 11-5 Solution : ");
printf(" \n ZL_Real = Real Part of Load Impedance    = %.3f Ohm",ZL_Real)
printf(" \n ZL_Real = Real Part of Load Impedance    = %.3f Ohm",ZL_Imag)
printf(" \n Pmax    = Maximum Average Power          = %.3f Watt",Pmax)





