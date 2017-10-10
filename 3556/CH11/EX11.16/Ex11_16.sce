clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 16

clear; clc; close; 
//
// Given data
Z1         = complex(12,10)
Z2         = complex(8,-6)
Vs_mag   = 150.0000;
Vs_angle = 0.0000;
Vs = complex(Vs_mag*cosd(Vs_angle),Vs_mag*sind(Vs_angle))
// Calculations Irms 
Ztot = Z1 + Z2; 
Irms = Vs/Ztot;
// Calculations Vrms 
Vrms = Z2*Irms;
// Calculations Complex Power 
S = Vrms * conj(Irms);
// Calculations Wattmeter Reading 
P = real(S);
//
disp("Example 11-16 Solution : ");
printf(" \n a. P    = Wattmeter Reading    = %.3f Watt",P)

