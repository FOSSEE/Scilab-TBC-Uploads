clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 15

clear; clc; close; 
//
// Given data
pf_old     = 0.8000;
pf_new     = 0.9500;
f          = 60.0000;
Vrms_mag   = 120.0000;
Vrms_angle = 0.0000;
P_load     = 4.0000;
Vrms = complex(Vrms_mag*cosd(Vrms_angle),Vrms_mag*sind(Vrms_angle))
// Calculations S1 dan Q1
S1 = (P_load*1000)/pf_old;
Q1 = S1 * sind(acosd(pf_old));
// Calculations S2 dan Q2
S2 = (P_load*1000)/pf_new;
Q2 = S2 * sind(acosd(pf_new));
// Calculations Reactive Power of Capacitors and Capacitance of Capacitors 
Qc = Q1 - Q2;
C = Qc/(2*%pi*f*(Vrms_mag)^2);
//
disp("Example 11-15 Solution : ");
printf(" \n a. Qc    = Reactive Power of Capacitors     = %.3f VAR",Qc)
printf(" \n a. C     = Capacitance of Capacitors        = %.7f MikroFarad",C*1000000)
