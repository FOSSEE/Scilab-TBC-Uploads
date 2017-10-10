clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 9  :  Sinusoids and Phasors
// Example 9 - 12

clear; clc; close; 
//
// Given data
Z1  = complex(20.0000,-20.0000);
Z2  = complex(20.0000,0.0000);
Z3  = complex(0.0000,-20.0000);
// Calculations Zp
Zp = (Z1*Z2)/(Z1+Z2);
// Calculations V1
Ztot = Zp + Z3;
V1   = (Zp/(Zp+Z3))
// Calculations Vo 
Vo = (complex(20.0000,0.0000)/Z1)*V1;
Vo_mag = norm(Vo);
Vo_angle = atand(imag(Vo),real(Vo));
//
disp("Example 9-13 Solution : ");
printf(" \n Vo_mag   = Magnitude of Vo       = %.3f Volt",Vo_mag)
printf(" \n Vo_angle = Angle of Vo          = %.3f degree",Vo_angle)
