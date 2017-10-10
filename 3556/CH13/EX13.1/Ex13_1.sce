clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  AC Circuits 
// Chapter 3:  Magnetically Couple Circuits
// Example 13 - 1

clear; clc; close; 
//
// Given data
Z1 = complex(4.0000,-1.0000);
Z2 = complex(2.0000,-4.0000)
V1 = complex(12.0000,0.0000);

// Calculations I2 and I1
I2 = V1/Z1;
I1 = Z2*I2;
I1_mag = norm(I1);
I1_angle = atand(imag(I1),real(I1));
I2_mag = norm(I2);
I2_angle = atand(imag(I2),real(I2));
//
// Display the result
disp("Example 13-1 Solution : ");
printf(" \n I1_mag    = Magnitude of Current 1        = %.3f A",I1_mag)
printf(" \n I1_angle  = Angle at Current 1            = %.3f degree",I1_angle)
printf(" \n I2_mag    = Magnitude of Current 2        = %.3f A",I2_mag)
printf(" \n I2_angle  = Angle at Current 2            = %.3f degree",I2_angle)
