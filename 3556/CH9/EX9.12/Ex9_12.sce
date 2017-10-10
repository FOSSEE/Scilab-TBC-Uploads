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
Vs  = complex(50*cosd(0.0000),50*sind(0.0000));
Z1  = complex(2.0000,-4.0000);
Z2  = complex(0.0000,4.0000);
Z3  = complex(8.0000,0.0000);
Z4  = complex(0.0000,-3.0000);
Z5  = complex(8.0000,6.0000);
Z6  = complex(12.0000,0.0000);
// Delta Network Converted to Y Network
Ztot1 = Z1 + Z2 + Z3; 
Zan  = (Z1*Z2)/Ztot1
Zbn  = (Z2*Z3)/Ztot1
Zcn  = (Z1*Z3)/Ztot1
// Calculations Zp1 and Zp2
Zp1  = (Zbn + Z4);
Zp2  =  Zcn + Z5; 
// Calculations Ztot
Zp = (Zp1*Zp2)/(Zp1+Zp2);
Ztot = Z6 + Zan + Zp;
Ztot_mag = norm(Ztot);
Ztot_angle = atand(imag(Ztot),real(Ztot));
// Calculations I 
I = Vs/Ztot;
I_mag = norm(I);
I_angle = atand(imag(I),real(I));
//
disp("Example 9-12 Solution : ");
printf(" \n I_mag   = Magnitude of I       = %.3f A",I_mag)
printf(" \n I_angle = Angle of I           = %.3f degree",I_angle)
