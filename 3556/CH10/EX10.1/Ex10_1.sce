clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 10 :  Sinusoidal Steady State Analysis
// Example 10 - 1

clear; clc; close; 

// Given data
Y11 = complex(1.0000,1.5000);
Y12 = complex(0.0000,2.5000);
Y21 = complex(11.0000,0.0000);
Y22 = complex(15.0000,0.0000);
I11 = complex(20.0000,0.0000);
I21 = complex(0.0000,0.0000);
//
// Calculations V1 and V2 
Y = [ Y11  Y12; 
      Y21  Y22];
Y1 = [I11  Y12;
      I21  Y22];
Y2 = [Y11   I11;
      Y21   I21];
V1 = det(Y1)/det(Y);
V2 = det(Y2)/det(Y);
V1_mag = norm(V1);
V1_angle = atand(imag(V1),real(V1));
V2_mag = norm(V2);
V2_angle = atand(imag(V2),real(V2));
// Calculations Ix 
Ix = V1/complex(0.0000,-2.5000);
Ix_mag = norm(Ix);
Ix_angle = atand(imag(Ix),real(Ix));
//
// Display the result
disp("Example 10-1 Solution : ");
printf(" \n V1_mag   = Magnitude of V1            = %.3f Volt",V1_mag)
printf(" \n V1_angle = Angle of V1                = %.3f Volt",V1_angle)
printf(" \n V2_mag   = Magnitude of V2            = %.3f Volt",V2_mag)
printf(" \n V2_angle = Angle of V2                = %.3f Volt",360+V2_angle)
printf(" \n Ix_mag   = Magnitude of Ix            = %.3f Volt",Ix_mag)
printf(" \n Ix_angle = Angle of Ix                = %.3f Volt",Ix_angle)







