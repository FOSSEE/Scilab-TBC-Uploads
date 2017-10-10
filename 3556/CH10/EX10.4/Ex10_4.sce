clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 10 :  Sinusoidal Steady State Analysis
// Example 10 - 3

clear; clc; close; 

// Given data
Z11 = complex(8.0000,-2.000);
Z12 = complex(-8.0000,0.0000);
Z21 = complex(-8.0000,0.0000);
Z22 = complex(14.000,1.0000);
V1 = complex(10.0000,6.0000);
V2 = complex(-24.0000,-35.0000);
// Calculations Vo
Z  = [Z11  Z12; 
      Z21  Z22];
Z1 = [V1   Z12;
      V2   Z22];
I1 = det(Z1)/det(Z);
I1_mag = norm(I1);
I1_angle = atand(imag(I1),real(I1));
I2 = complex(-3,000);
Vo = complex(0,-2)*(I1 - I2);
Vo_mag = norm(Vo);
Vo_angle = atand(imag(Vo),real(Vo));
//
// Display the result
disp("Example 10-4 Solution : ");
printf(" \n Vo_mag   = Magnitude of Vo            = %.3f Volt",Vo_mag)
printf(" \n Vo_angle = Angle of Vo                = %.3f Volt",Vo_angle + 360)






