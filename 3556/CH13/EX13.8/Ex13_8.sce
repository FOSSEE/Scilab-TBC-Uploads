clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  AC Circuits 
// Chapter 13 :  Magnetically Couple Circuits
// Example 13 - 8

clear; clc; close; 
//
// Given data
Z1 = complex(4.0000,-6.0000);
ZL = complex(20.0000,0.0000);
Vs = complex(120*cosd(0.0000),120*sind(0.0000))
n  = 2.0000;
//
// Calculations I1
ZR = ZL/n^2;
Zin = Z1 + ZR; 
I1 = Vs/Zin
I1_mag = norm(I1)
I1_angle = atand(imag(I1),real(I1));
// Calculation I2 
I2 = -I1/n;
Vo = ZL*I2;
Vo_mag = norm(Vo);
Vo_angle = atand(imag(Vo),real(Vo))+360.0000;
// Complex Power 
S = Vs*conj(I1);
S_mag = norm(S);
S_angle = atand(imag(S),real(S))
// Display the result
disp("Example 13-8 Solution : ");
printf(" \n I1_mag    = Magnitude of Current I1        = %.3f A",I1_mag)
printf(" \n I1_angle  = Angle at Current I1            = %.3f degree",I1_angle)
printf(" \n Vo_mag    = Magnitude of Voltage Vo        = %.3f Volt",Vo_mag)
printf(" \n Vo_angle  = Angle at Voltage Vo            = %.3f degree",Vo_angle)
printf(" \n S_mag     = Magnitude of Complex Power     = %.3f VA",S_mag)
printf(" \n S_angle   = Angle at Complex Power         = %.3f degree",S_angle)

