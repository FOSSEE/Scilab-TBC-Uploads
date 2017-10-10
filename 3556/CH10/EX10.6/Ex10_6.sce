clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 
//
// Part 2     :  AC Circuits 
// Chapter 10 :  Sinusoidal Steady State Analysis
// Example 10 - 6
clear; clc; close;
 
// Given data
V1 = complex(-1.0000,0.0000);
Z1 = complex(0.0000,-5.000);
Z2 = complex(4.0000,0.0000);
Z3 = complex(1.0000,4.0000)
Z4 = complex(0.0000,-2.0000)
Z5 = complex(1.0000,10.0000)
Vs1 = complex(10*cosd(0.0000),10*sind(0.0000))
// Calculations V2
Zp1 = (Z1*Z2)/(Z1 + Z2);
V2  = ( 1/(Z3+Zp1))*Vs1
V2_mag = norm(V2)
V2_angle = atand(imag(V2),real(V2))
// Calculations V3
Zp2 = (Z2*Z4)/(Z2 + Z4);
Zs1 = Z5 + Zp2;
I1 = (complex(0,10)/Zs1)*complex(0,-2);
V3 = I1
V3_mag = norm(V3)
V3_angle = atand(imag(V3),real(V3))
// Calculation Vo
Vo = V1 + V2 + V3;
Vo_mag = norm(Vo);
Vo_angle = atand(imag(Vo),real(Vo))
// Display the result
disp("Example 10-6 Solution : ");
printf(" \n Vo_mag   = Magnitude of Vo            = %.3f Volt",Vo_mag)
printf(" \n Vo_angle = Angle of Vo                = %.3f degree",Vo_angle)






