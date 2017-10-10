clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 
//
// Part 2     :  AC Circuits 
// Chapter 10 :  Sinusoidal Steady State Analysis
// Example 10 - 12
clear; clc; close;
 
// Given data
R1 = 10000.0000;
R2 = R1;
C1 = 2.0000 * 10^-6;
C2 = 1.0000 * 10^-6;
w  = 200.0000;
// Calculations Z1 dan Z2 
Z1 = complex(R1,0.0000)
Z2 = Z1; 
Zc1 = complex(0.000,-1/(w*C1));
Zc2 = complex(0.0000,-1/(w*C2));
// Calculations Rf 
Zf = (Z2 * Zc2)/(Z2 + Zc2)
// Calculations Ri 
Zi = Z1 + Zc1;
// Calculations Closed Loop Gain
C =  -Zf/Zi;
C_mag = norm(C) 
C_angle = atand(imag(C),real(C))
//
// Display the result
disp("Example 10-10 Solution : ");
printf(" \n C_mag   = Magnitude of Closed Loop Gain          = %.3f Volt",C_mag)
printf(" \n C_angle = Angle of Closed Loop Gain              = %.3f degree",C_angle)
