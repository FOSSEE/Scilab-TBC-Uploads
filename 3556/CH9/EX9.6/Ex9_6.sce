clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 9  :  Sinusoids and Phasors
// Example 9 - 6

clear; clc; close; 
//
// Given data
I1 =  complex(4*cosd(30.0000),4*sind(30.0000));
I2 =  complex(5*cosd(-110.0000),5*sind(-110.0000));
//
// Calculations I
I  = I1 + I2;
I_mag = norm(I);
I_angle = atand(imag(I),real(I));
//
disp("Example 9-6 Solution : ");
printf(" \n I_mag    = Magnitude of I        = %.3f ",I_mag)
printf(" \n I_angle  = Angle of I            = %.3f degree",I_angle)
