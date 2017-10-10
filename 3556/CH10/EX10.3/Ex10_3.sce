clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 10 :  Sinusoidal Steady State Analysis
// Example 10 - 3

clear; clc; close; 

// Given data
Z11 = complex(8.0000,8.000);
Z12 = complex(0.0000,2.0000);
Z21 = complex(0.0000,2.0000);
Z22 = complex(4.0000,-4.0000);
V11 = complex(0.0000,50.0000);
V21 = complex(0.0000,-30.0000);
//
// Calculations V1 and V2 
Z = [ Z11  Z12; 
      Z21  Z22];
Z1 = [V11  Z12;
      V21  Z22];
Z2 = [Z11   V11;
      Z21   V21];
I1 = det(Z1)/det(Z);
I2 = det(Z2)/det(Z);
I1_mag = norm(I1);
I1_angle = atand(imag(I1),real(I1));
I2_mag = norm(I2);
I2_angle = atand(imag(I2),real(I2));
// Calculations I0 
Io_mag = -I2_mag
Io_angle = -I2_angle;
//
// Display the result
disp("Example 10-3 Solution : ");
printf(" \n I1_mag   = Magnitude of I1            = %.3f Volt",I1_mag)
printf(" \n I1_angle = Angle of I1                = %.3f Volt",I1_angle)
printf(" \n I2_mag   = Magnitude of I2            = %.3f Volt",I2_mag)
printf(" \n I2_angle = Angle of I2                = %.3f Volt",I2_angle)
printf(" \n Io_mag   = Magnitude of Io            = %.3f Volt",Io_mag)
printf(" \n Io_angle = Angle of Io                = %.3f Volt",180-Io_angle)






