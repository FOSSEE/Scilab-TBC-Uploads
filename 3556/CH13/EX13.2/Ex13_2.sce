clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1   :  AC Circuits 
// Chapter 3:  Magnetically Couple Circuits
// Example 13 - 2

clear; clc; close; 
//
// Given data
Z11 = complex(4.0000,3.0000);
Z12 = complex(0.0000,-8.0000);
Z21 = complex(0.0000,-8.0000);
Z22 = complex(5.0000,18.0000);
V1 = complex(100.0000,0.0000);
V2 = complex(0.0000,0.0000)
// Calculations Delta, Delta_1, Delta_2
delta   = det([ Z11  Z12;
                Z21  Z22]);
delta_1 = det([V1    Z12;
               V2    Z22]);
delta_2 = det([Z11   V1;
               Z21   V2]);
I1 = delta_1/delta;
I2 = delta_2/delta;
I1_mag = norm(I1);
I1_angle = atand(imag(I1),real(I1));
I2_mag = norm(I2);
I2_angle = atand(imag(I2),real(I2));
//
// Display the result
disp("Example 13-2 Solution : ");
printf(" \n I1_mag    = Magnitude of Current 1        = %.3f A",I1_mag)
printf(" \n I1_angle  = Angle at Current 1            = %.3f degree",I1_angle)
printf(" \n I2_mag    = Magnitude of Current 2        = %.3f A",I2_mag)
printf(" \n I2_angle  = Angle at Current 2            = %.3f degree",I2_angle)
