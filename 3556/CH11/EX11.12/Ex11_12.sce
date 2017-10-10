clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 12

clear; clc; close; 
//
// Given data
S_load     =  12.0000;                     
pf_load    =   0.8560;                     
Vrms_load  = 120.0000;                     
Vrms_angle =   0.0000;
//
// Calculations Average dan Reactive Power 
P_load = S_load * pf_load; 
Q_load = S_load * sqrt(1 - ((pf_load)^2));
// Calculations Peak Current 
S  = complex(P_load*1000,Q_load*1000)
V  = complex(Vrms_load*cosd(0),Vrms_load*sind(0))
I_stars = norm(S/V);
I_peak  = I_stars * sqrt(2);
// Calculations Load Impedance 
Irms_mag = I_stars;
Irms_real = real(S/V);
Irms_imag = imag(S/V);
Irms_angle = -atand(Irms_imag,Irms_real);
Z_mag = Vrms_load/Irms_mag;
Z_angle = Vrms_angle - Irms_angle;
//
disp("Example 11-12 Solution : ");
disp("a. Real and Reactive Power : ");
printf(" \n P_load       = Real Power                          = %.3f KW",P_load)
printf(" \n Q_load       = Reactive Power                      = %.3f Kvar",Q_load)
disp("")
disp("b. Peak Current : ");
printf(" \n I_peak       = Peak Current                        = %.3f A",I_peak)
disp("")
disp("C. Load Impedance : ");
printf(" \n Z_mag        = Magnitude of Load Impedance         = %.3f Ohm",Z_mag)
printf(" \n Z_angle      = Angle of Load Impedance             = %.3f degree",Z_angle)

