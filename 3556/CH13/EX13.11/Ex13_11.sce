clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  AC Circuits 
// Chapter 13 :  Magnetically Couple Circuits
// Example 13 - 11

clear; clc; close; 
//
// Given data
V1 = complex(120*cosd(30.0000),120*sind(30.0000));
ZL = complex(8.0000,6.0000)
N1 = 80.0000;
N2 = 120.0000;
//
// Calculatioons I1, I2 dan Io
V2  = ((N1 + N2)/N1)*V1
I2  = V2/ZL;
I2_mag = norm(I2);
I2_angle = atand(imag(I2),real(I2));
I1  = ((N1 + N2)/N1)*I2;
I1_mag = norm(I1);
I1_angle = atand(imag(I1),real(I1));
Io  = I2 - I1;
Io_mag = norm(Io);
Io_angle = atand(imag(Io),real(Io));
// Complex Power 
S2 = V2*conj(I2);
S2_mag = norm(S2);
S2_angle = atand(imag(S2),real(S2))
// Display the result
disp("Example 13-11 Solution : ");
disp("a. Current I1, I2 and Io : ");
printf(" \n I1_mag    = Magnitude of Current 1      = %.3f A",I1_mag)
printf(" \n I1_angle  = Angle at Current 1          = %.3f degree",I1_angle)
printf(" \n I2_mag    = Magnitude of Current 2      = %.3f A",I2_mag)
printf(" \n I2_angle  = Angle at Current 2          = %.3f degree",I2_angle)
printf(" \n Io_mag    = Magnitude of Current Io     = %.3f A",Io_mag)
printf(" \n Io_angle  = Angle at Current Io         = %.3f degree",Io_angle)
disp("")
disp("The Complex Power Supplied to The Load : ");
printf(" \n S2_mag    = Magnitude of Power Complex  = %.3f KVA",S2_mag/1000)
printf(" \n S2_angle  = Angle at Power Complex      = %.3f degree",S2_angle)
