clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 
//
// Part 2     :  AC Circuits 
// Chapter 10 :  Sinusoidal Steady State Analysis
// Example 10 - 9
clear; clc; close;
 
// Given data
Z1 = complex(2.0000,-4.000);
Z2 = complex(4.0000,3.0000);
Io = complex(10.0000,0.0000)
Is = complex(15.0000,0.0000)
// Calculations Vth
Vth = (Io*Z1) - (5*Z2);
Vth_mag = norm(Vth);
Vth_angle = atand(imag(Vth),real(Vth))
//
// Display the result
disp("Example 10-9 Solution : ");
printf(" \n Vth_mag   = Magnitude of Vth          = %.3f Volt",Vth_mag)
printf(" \n Vth_angle = Angle of Vth              = %.3f degree",Vth_angle)
