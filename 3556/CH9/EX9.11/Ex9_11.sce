clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 9  :  Sinusoids and Phasors
// Example 9 - 11

clear; clc; close; 
//
// Given data
L   =  5.0000; 
C   =  0.0100;
w   =  4.0000;
R   = 60.0000;
Vs  =  complex(20*cosd(-15.0000),20*sind(-15.0000));
ZL  =  complex(0.0000,w*L);
ZC  =  complex(0.0000,-1/(w*C));
ZR  =  complex(R,0.0000);
//
// Calculations Zp = ZL//ZC
Zp = (ZL*ZC)/(ZL+ZC);
// Calculations Ztot
Ztot = ZR + Zp;
// Calculations Vo
Vo = ((Zp)/(Ztot)) * Vs;
Vo_mag = norm(Vo);
Vo_angle = atand(imag(Vo),real(Vo));
//
disp("Example 9-11 Solution : ");
printf(" \n Vo_mag   = Magnitude of Vo       = %.3f Volt",Vo_mag)
printf(" \n Vo_angle = Angle of Vo           = %.3f degree",Vo_angle)
