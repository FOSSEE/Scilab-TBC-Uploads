clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 9

clear; clc; close; 
//
// Given data
I_max   =   4.0000;                   
I_rms   =   I_max/sqrt(2);            
I_angle =  10.0000;                  
V_max   = 120.0000;                                                   
V_rms   =   V_max/sqrt(2);           
V_angle = -20.0000;                   
w       = 100.0000*%pi;               
//
// Calculations Apparent Power 
S  = V_rms * I_rms;                   
// Calculations Power Factor 
pf  = cosd(V_angle - I_angle);        
// Calculations R and C
Z_mag    = V_max/I_max;              
Z_angle  = V_angle - I_angle;         
R = Z_mag * cosd(Z_angle);            
X = Z_mag * sind(Z_angle);             
C = -1*(10^6)/(w*X);                  
//
disp("Example 11-9 Solution : ");
printf(" \n S   = Apparent Power            = %.3f VA",S)
printf(" \n pf  = Power Factor              = %.3f ",pf)
printf(" \n R   = Resistance of Resistor    = %.3f Ohm",R)
printf(" \n C   = Capasitance of Capasitor  = %.3f Mikrofarad",C)


