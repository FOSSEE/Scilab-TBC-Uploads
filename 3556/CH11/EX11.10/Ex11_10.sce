clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 10

clear; clc; close; 
//
// Given data
V_mag   =  30.0000;                                                     
V_angle =   0.0000;                   
Z1 = complex(6,0)                  
Z2 = complex(0,-2)                   
Z3 = complex(4,0)                     
//
// Calculations Total Impendance 
Ztot = Z1 + (Z2*Z3)/(Z2 + Z3)         
// Calculation Power Factor 
Z_real = real(Ztot);                
Z_imag = imag(Ztot);                  
Z_mag = norm(Ztot);                   
Z_angle = atand(Z_imag,Z_real);       
pf = cosd(Z_angle);                   
// Calculations Pmax 
I_mag = V_mag/Z_mag;                  
Pmax = V_mag * I_mag * pf;            
// 
disp("Example 11-7 Solution : ");
printf(" \n Pf      = Power Factor                                 = %.3f A",pf)
printf(" \n Pmax    = Maximum Average Power Supplied by Source     = %.3f Watt",Pmax)

