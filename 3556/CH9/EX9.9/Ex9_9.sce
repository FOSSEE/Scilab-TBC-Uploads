clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 9  :  Sinusoids and Phasors
// Example 9 - 9

clear; clc; close; 
//
// Given data
V  =  complex(10*cosd(0.0000),10*sind(0.0000));
Z  =  complex(5.0000,-2.5000);
Xc =  complex(0.0000,0.40000);
//
// Calculations I
I  = V/Z;
I_mag = norm(I);
I_angle = atand(imag(I),real(I));
// Calculations Vc 
Vc = I/Xc;
Vc_mag = norm(Vc);
Vc_angle = atand(imag(Vc),real(Vc));
//
disp("Example 9-9 Solution : ");
printf(" \n I_mag    = Magnitude of I        = %.3f ",I_mag)
printf(" \n I_angle  = Angle of I            = %.3f degree",I_angle)
printf(" \n Vc_mag   = Magnitude of Vc       = %.3f ",Vc_mag)
printf(" \n Vc_angle = Angle of Vc           = %.3f degree",Vc_angle)
