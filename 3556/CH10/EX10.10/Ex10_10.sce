clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 
//
// Part 2     :  AC Circuits 
// Chapter 10 :  Sinusoidal Steady State Analysis
// Example 10 - 10
clear; clc; close;
 
// Given data
Z1 = complex(5.0000,0.0000)
Z2 = complex(20.0000,15.0000)
I2 = complex(0.0000,8.0000)
Is = complex(15.0000,0.0000)
// Calculations Inorton (In)
I3 = complex(3.0000,0.0000)+ I2;
In = I3;
In_mag = norm(In);
In_angle = atand(imag(In),real(In));
// Calculation Io 
Io = (Z1/(Z1+Z2))*In;
Io_mag = norm(Io);
Io_angle = atand(imag(Io),real(Io))
//
// Display the result
disp("Example 10-10 Solution : ");
printf(" \n Io_mag   = Magnitude of Io          = %.3f Volt",Io_mag)
printf(" \n Io_angle = Angle of Io              = %.3f degree",Io_angle)
