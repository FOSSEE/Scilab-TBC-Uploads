clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC Power Analysis 
// Example 11 - 1

clear; clc; close; 

// Given data
Vm_mag   = 120.0000;
Vm_angle =  45.0000;
Im_mag   =  10.0000;
Im_angle = -10.0000;
//
// Calculations Average Power 
P = 0.5000 * Vm_mag * Im_mag * cosd(Vm_angle - Im_angle);
//
// Display the result
disp("Example 11-1 Solution : ");
printf(" \n P = Average Power                    = %.3f Watt",P)







