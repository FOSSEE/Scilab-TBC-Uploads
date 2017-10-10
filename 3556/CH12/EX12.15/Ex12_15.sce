clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 12 :  Three Phase Circuit 
// Example 12 - 15

clear; clc; close; 
//
// Given data
Zy    =  complex(8,6);
VL    =   208.0000;
// Calculations Wattmeter Reading 1 dan Wattmeter Reading 2
Zy_mag = norm(Zy);
Zy_angle = atand(imag(Zy),real(Zy));
Vp = VL/sqrt(3);
IL = Vp/Zy_mag; 
P1 = VL*IL*cosd(Zy_angle + 30.0000);
P2 = VL*IL*cosd(Zy_angle - 30.0000);
// Calculations Total Real Power 
PT = P1 + P2;
// Calculations Total Reactive Power 
QT = sqrt(3)*(P2 - P1);
//
disp("Example 12-15 Solution : "); 
disp("a. Wattmeter Reading : ");
printf(" \n P1  =  Reading of Wattmeter W1              = %.3f Watt",P1)
printf(" \n P2  =  Reading of Wattmeter W2              = %.3f Watt",P2)
disp("")
disp("b. Total Real Power : ");
printf(" \n PT  =  Total Real Power                     = %.3f Watt",PT)
disp("")
disp("c. Total Reactive Power : ");
printf(" \n QT  =  Total Real Power                     = %.3f Watt",QT)
