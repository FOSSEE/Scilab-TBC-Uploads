clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 11

clear; clc; close; 
//
// Given data
V_mag     =  60.0000;                     
V_angle   = -10.0000;                     
I_mag     =   1.5000;                     
I_angle   =  50.0000;                     
//
// Calculations Complex Power and Apparent Power
V_rms = V_mag/sqrt(2); 
I_rms = I_mag/sqrt(2);
S_mag = V_rms * I_rms; 
S_angle = V_angle - I_angle;  
S_apparent = S_mag;
// Calculaions Real and Reactive Power 
P = S_mag * cosd(S_angle);
Q = S_mag * sind(S_angle);
// Calculations Power Factor and Impedance Load 
pf = cosd(S_angle);
Z_mag  = V_mag/I_mag;
Z_angle = V_angle - I_angle; 
//
disp("Example 11-11 Solution : ");
disp("a. Complex Power and Apparent Power : ");
printf(" \n S_mag       = Magnitude of Complex Power          = %.3f VA",S_mag)
printf(" \n S_angle     = Angle of Complex Power              = %.3f degree",S_angle)
printf(" \n S_apparent  = Angle of Complex Power              = %.3f VA",S_apparent)
disp("")
disp("b. Real and Reactive Power : ");
printf(" \n P           = Real Power                          = %.3f Watt",P)
printf(" \n Q           = Reactive Power                      = %.3f Var",Q)
disp("")
disp("C. Power Factor and Load Impedance : ");
printf(" \n pf           = Power Factor                       = %.3f leading",pf)
printf(" \n Z_mag        = Magnitude of Load Impedance        = %.3f Ohm",Z_mag)
printf(" \n Z_angle      = Angle of Load Impedance            = %.3f degree",Z_angle)

