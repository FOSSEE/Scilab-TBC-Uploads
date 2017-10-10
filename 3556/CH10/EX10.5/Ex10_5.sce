clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 10 :  Sinusoidal Steady State Analysis
// Example 10 - 5
clear; clc; close; 
// Given data
Z1 = complex(8.0000,10.000);
Z2 = complex(0.0000,-2.0000);
Z3 = complex(0.0000,-2.0000);
Z4 = complex(4.000,0.0000);
V1 = complex(0.0000,20.0000);
I2 = complex(2.6470,-1.1760)
// Calculations Io_1
Zp1 = (Z1*Z2)/(Z1 + Z2);
Io_1 = V1/(Zp1 + Z3 + Z4)
Io_1_mag = norm(Io_1);
Io_1_angle = atand(imag(Io_1),real(Io_1));
// Calculations Io_2
Io_2 = -I2
// Calculations Io
Io = Io_1 + Io_2;
Io_mag = norm(Io);
Io_angle = atand(imag(Io),real(Io));
//
// Display the result
disp("Example 10-5 Solution : ");
printf(" \n Io_mag   = Magnitude of Io            = %.3f Volt",Io_mag)
printf(" \n Io_angle = Angle of Io                = %.3f Volt",Io_angle)






