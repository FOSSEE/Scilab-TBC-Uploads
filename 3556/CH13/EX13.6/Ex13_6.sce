clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  AC Circuits 
// Chapter 13 :  Magnetically Couple Circuits
// Example 13 - 6

clear; clc; close; 
//
// Given data
L1 =  8.0000;
L2 =  5.0000;
M  =  -1.00000;
Z1 = complex(4.0000,0.0000);
ZL = complex(10.0000,0.0000);
V  = complex(60*cosd(90.0000),60*sind(90.0000))
I2 = complex(0.0000,0.0600)
//
// Calculations I1
I1 = complex(5.0000,-10.0000)*I2
I1_mag = norm(I1);
I1_angle = atand(imag(I1),real(I1));
// Calculation I2
I2_mag = norm(I2);
I2_angle = atand(imag(I2),real(I2));
// Calculation Vo
Vo = complex(-10.0000,0.0000)*I2;
Vo_mag = norm(Vo);
Vo_angle = atand(imag(Vo),real(Vo));
//
// Display the result
disp("Example 13-6 Solution : ");
printf(" \n I1_mag    = Magnitude of Current I1        = %.3f A",I1_mag)
printf(" \n I1_angle  = Angle at Current I1            = %.3f degree",I1_angle)
printf(" \n I2_mag    = Magnitude of Current I2        = %.3f A",I2_mag)
printf(" \n I2_angle  = Angle at Current I2            = %.3f degree",I2_angle)
printf(" \n Vo_mag    = Magnitude of Voltage Vo        = %.3f A",Vo_mag)
printf(" \n Vo_angle  = Angle at Voltage Vo            = %.3f degree",Vo_angle)
