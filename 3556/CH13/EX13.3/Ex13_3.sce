clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  AC Circuits 
// Chapter 13 :  Magnetically Couple Circuits
// Example 13 - 3

clear; clc; close; 
//
// Given data
L1 = 5.0000;
L2 = 4.0000;
C  = (1/16);
M  = 2.5000;
w  = 4.0000;
Vs = complex(60.0000*cosd(30.0000),60*sind(30.0000));
I2 = complex(3.2540*cosd(160.6000),3.2540*sind(160.6000));
//
// Calculations Coupling Coefficient
k = M/sqrt(L1*L2);
// Calculations I1 
I1 = complex(1.2000*cosd(180.0000),1.20000*sind(180.0000))*I2
I1_mag = norm(I1);
I1_angle= atand(imag(I1),real(I1))
// Calculations I2 
I2_mag = norm(I2);
I2_angle= atand(imag(I2),real(I2))
// Calculations The Total Energy Stored 
angle_deg = (4/%pi)*180; 
angle_I1 = angle_deg + I1_angle;
I1_t = I1_mag * cosd(angle_I1);
angle_I2 = angle_deg + I2_angle;
I2_t = I2_mag * cosd(angle_I2);
W = 0.5 * L1 * (I1_t)^2 + 0.5 * L2 * (I2_t)^2 + M*I1_t*I2_t;
// Display the result
disp("Example 13-3 Solution : ");
printf(" \n I1_mag    = Magnitude of Current 1        = %.3f A",I1_mag)
printf(" \n I1_angle  = Angle at Current 1            = %.3f degree",I1_angle)
printf(" \n I2_mag    = Magnitude of Current 2        = %.3f A",I2_mag)
printf(" \n I2_angle  = Angle at Current 2            = %.3f degree",I2_angle)
printf(" \n W         = Total Energy Stored           = %.3f Joule",W)
