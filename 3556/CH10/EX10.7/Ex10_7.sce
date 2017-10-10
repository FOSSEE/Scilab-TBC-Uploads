clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 
//
// Part 2     :  AC Circuits 
// Chapter 10 :  Sinusoidal Steady State Analysis
// Example 10 - 7
clear; clc; close;
 
// Given data
Z1 = complex(0.0000,-6.000);
Z2 = complex(8.0000,0.0000);
Z3 = complex(4.0000,0.0000)
Z4 = complex(0.0000,12.0000)
Vs = complex(120*cosd(75.0000),120*sind(75.0000))
// Calculations Is
Is = Vs/Z1;
Is_mag = norm(Is);
Is_angle = atand(imag(Is),real(Is));
// Calculations Zp1
Zp1 = (Z1*Z2)/(Z1+Z2);
// Calculations Zp2
Zp2 = (Z3*Z4)/(Z3+Z4);
// Calculations Zth 
Zth = Zp1 + Zp2;
Zth_mag = norm(Zth);
Zth_angle = atand(imag(Zth),real(Zth))
// Calculations Vth
I1 = Vs/(Z1+Z2);
I2 = Vs/(Z3+Z4);
Vth = (Z3*I2) + (-Z1*I1);
Vth_mag = norm(Vth);
Vth_angle = atand(imag(Vth),real(Vth));
//
// Display the result
disp("Example 10-7 Solution : ");
printf(" \n Zth_mag   = Magnitude of Zth          = %.3f Volt",Zth_mag)
printf(" \n Zth_angle = Angle of Zth              = %.3f degree",Zth_angle)
printf(" \n Vth_mag   = Magnitude of Vth          = %.3f Volt",Vth_mag)
printf(" \n Vth_angle = Angle of Vth              = %.3f degree",Vth_angle+360)






