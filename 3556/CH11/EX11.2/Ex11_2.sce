clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 2

clear; clc; close; 
//
// Given data
Z    = complex(30,-70)                  
V    = complex(120*cos(0),120*sin(0))   
//
// Calculations Current 
I    = V/Z;                             
I_real = real(I);                       
I_imag = imag(I);                       
I_magnitude  = norm(I);                               
I_angle      = atand(I_imag,I_real);   
//
// Display the result
disp("Example 11-2 Solution : ");
printf(" \n I_magnitude = Magnitude of Current   = %.3f A",I_magnitude)
printf(" \n I_angle     = Angle of Current       = %.3f A",I_angle)






