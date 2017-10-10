clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 9  :  Sinusoids and Phasors
// Example 9 - 10

clear; clc; close; 
//
// Given data
Z1  =  complex(0.0000,-10.0000);
Z2  =  complex(3.0000,-2.0000);
Z3  =  complex(8.0000,10.0000);
//
// Calculations Zp = Z2//Z3
Zp = (Z2*Z3)/(Z2+Z3);
// Calculations Ztot
Zin = Z1 + Zp
Zin_real = real(Zin);
Zin_imaginer = imag(Zin);
//
disp("Example 9-10 Solution : ");
printf(" \n Zin_real   = Real Part of Zin            = %.3f Ohm",Zin_real)
printf(" \n Zin_angle  = Imaginer Part of Zin        = %.3f Ohm",Zin_imaginer)
