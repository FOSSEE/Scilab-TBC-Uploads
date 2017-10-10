clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 14

clear; clc; close; 
//
// Given data
Z1         = complex(60*cosd(-30),60*sind(-30))
Z2         = complex(40*cosd(45),40*sind(45))                   
Vrms_mag   = 120.0000;                     
Vrms_angle =  10.0000;
Vrms = complex(Vrms_mag*cosd(Vrms_angle),Vrms_mag*sind(Vrms_angle))
// Calculations I1 and I2 
I1   = Vrms/Z1;
I2   = Vrms/Z2;
// Calculation S1, S2 and St  
S1 = (Vrms_mag)^2/conj(Z1);
S2 = (Vrms_mag)^2/conj(Z2);
St = S1 + S2;
// Calculations Total Apparent Power 
St_mag = norm(St);
// Calculations Total Real Power 
Pt = real(St);
// Calculations Total Reactive Power 
Qt = imag(St);
// Calculations Power Factor 
pf = Pt/St_mag;
//
disp("Example 11-14 Solution : ");
printf(" \n a. St_mag         = Total Apparent Power                          = %.3f VA",St_mag)
printf(" \n b. Pt             = Total Real Power                              = %.3f Watt",Pt)
printf(" \n c. Qt             = Total Reactive Power                          = %.3f VAR",Qt)
printf(" \n c. Pf             = Power Factor                                  = %.3f Lagging",pf)
