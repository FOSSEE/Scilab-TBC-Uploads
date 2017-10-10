clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 12 :  Three Phase Circuit 
// Example 12 - 6

clear; clc; close; 
//
// Given data
Vp_mag   = 110.0000;                               
Vp_angle =   0.0000;                                
Ip_mag   =   6.8100;                                
Ip_angle = -21.8000;                                
Z1 = complex(10,8);                             
Z2 = complex(5,-2);                            
//
// Calculations Complex Power Absorbed by The Source 
S_s_mag   = -3*Vp_mag*Ip_mag;
S_s_angle  =  Vp_angle + (-1*Ip_angle);
P_s = S_s_mag * cosd(S_s_angle); 
Q_s = S_s_mag * sind(S_s_angle); 
// Calculations Complex Power Absorbed By Load 1
Z1_mag = norm(Z1);
Z1_real = real(Z1);
Z1_imag = imag(Z1);
Z1_angle = atand(Z1_imag,Z1_real)
S_1_mag = 3*(Ip_mag)^2.00*Z1_mag
S_1_angle = Z1_angle
P_1 = S_1_mag * cosd(S_1_angle);
Q_1 = S_1_mag * sind(S_1_angle);
// Calculations Complex Power Absorbed By Load 2
Z2_mag = norm(Z2);
Z2_real = real(Z2);
Z2_imag = imag(Z2);
Z2_angle = atand(Z2_imag,Z2_real)
S_2_mag = 3*(Ip_mag)^2.00*Z2_mag
S_2_angle = Z2_angle
P_2 = S_2_mag * cosd(S_2_angle);
Q_2 = S_2_mag * sind(S_2_angle);
//
disp("Example 12-6 Solution : ");
printf(" \n S_s_mag    = Magnitude of Complex Power Absorbed by The Source      = %.3f VA",S_s_mag)
printf(" \n S_s_Angle  = Angle of Complex Power Absorbed by The Source          = %.3f Degree",S_s_angle)
printf(" \n P_s        = Real Power Absorbed by The Source                      = %.3f Watt",P_s)
printf(" \n Q_s        = Reactive Power Absorbed by The Source                  = %.3f Var",Q_s)
printf(" \n S_1_mag    = Magnitude of Complex Power Absorbed by The Load 1      = %.3f VA",S_1_mag)
printf(" \n S_1_Angle  = Angle of Complex Power Absorbed by The Load 1          = %.3f Degree",S_1_angle)
printf(" \n P_1        = Real Power Absorbed by The Load 1                      = %.3f Watt",P_1)
printf(" \n Q_1        = Reactive Power Absorbed by The Load 1                  = %.3f Var",Q_1)
printf(" \n S_2_mag    = Magnitude of Complex Power Absorbed by The Load 2      = %.3f VA",S_2_mag)
printf(" \n S_2_Angle  = Angle of Complex Power Absorbed by The Load 2          = %.3f Degree",S_2_angle)
printf(" \n P_2        = Real Power Absorbed by The Load 2                      = %.3f Watt",P_2)
printf(" \n Q_2        = Reactive Power Absorbed by The Load 2                  = %.3f Var",Q_2)





