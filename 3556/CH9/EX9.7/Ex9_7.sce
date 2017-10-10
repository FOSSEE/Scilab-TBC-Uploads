clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 9  :  Sinusoids and Phasors
// Example 9 - 7

clear; clc; close; 
//
// Given data
V  =  complex(50*cosd(75.0000),50*sind(75.0000));
Z  =  complex(4.0000,-10.0000);
//
// Calculations I
I  = V/Z;
I_mag = norm(I);
I_angle = atand(imag(I),real(I));
//
disp("Example 9-7 Solution : ");
printf(" \n I_mag    = Magnitude of I        = %.3f A",I_mag)
printf(" \n I_angle  = Angle of I            = %.3f degree",I_angle)
