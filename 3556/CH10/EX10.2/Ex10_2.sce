clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 10 :  Sinusoidal Steady State Analysis
// Example 10 - 2

clear; clc; close; 

// Given data
Vs_mag   = 10.0000;
Vs_angle = 45.0000;
V2_mag   = 31.4100;
V2_angle = -87.1800;
//
// Calculations V1 
Vs = complex(Vs_mag*cosd(Vs_angle),Vs_mag*sind(Vs_angle));
V2 = complex(V2_mag*cosd(V2_angle),V2_mag*sind(V2_angle));
V1 = Vs + V2;
V1_mag = norm(V1);
V1_angle = atand(real(V1),imag(V1))
//
// Display the result
disp("Example 10-2 Solution : ");
printf(" \n V1_mag   = Magnitude of V1            = %.3f Volt",V1_mag)
printf(" \n V1_angle = Angle of V1                = %.3f Volt",90-V1_angle)







