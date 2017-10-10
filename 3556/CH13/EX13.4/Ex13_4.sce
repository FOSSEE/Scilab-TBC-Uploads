clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  AC Circuits 
// Chapter 13 :  Magnetically Couple Circuits
// Example 13 - 4

clear; clc; close; 
//
// Given data
Z1 = complex(60.0000,-100.0000);
Z2 = complex(30.0000,40.0000);
ZL = complex(80.0000,60.0000);
Z_20 = complex(0.0000,20.0000);
Z_40 = complex(0.0000,40.0000);
M  = 5.0000;
V  = complex(50*cosd(60.0000),50*sind(60.0000))
//
// Calculations Zin 
Zin_1 = M^2/(Z_40 + Z2 + ZL)
Zin_2 = Z1 + Z_20;
Zin = Zin_1 + Zin_2
Zin_mag = norm(Zin);
Zin_angle = atand(imag(Zin),real(Zin))
// Calculation I1 
I1 = V/Zin
I1_mag = norm(I1);
I1_angle = atand(imag(I1),real(I1))
// Display the result
disp("Example 13-4 Solution : ");
printf(" \n Zin_mag    = Magnitude of Zin        = %.3f A",Zin_mag)
printf(" \n Zin_angle  = Angle at Zin            = %.3f degree",Zin_angle)
printf(" \n I1_mag    = Magnitude of Current 1   = %.3f A",I1_mag)
printf(" \n I1_angle  = Angle at Current 1       = %.3f degree",I1_angle)
