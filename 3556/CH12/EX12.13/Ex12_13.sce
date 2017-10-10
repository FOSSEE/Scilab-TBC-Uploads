clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 12 :  Three Phase Circuit 
// Example 12 - 13

clear; clc; close; 
//
// Given data
Van_mag   = 100.0000;
Van_angle = 0.0000;
Vbn_mag   = 100.0000;
Vbn_angle = 120.0000;
Vcn_mag   = 100.0000;
Vcn_angle = -120.0000;
Ia_mag   = 6.6700; 
Ia_angle = 0.0000;
Ib_mag   = 8.9400;
Ib_angle = 93.4400;
Ic_mag   = 10.0000;
Ic_angle = -66.8700;
// Calculations The Wattmeter Reading 1
P1 = Van_mag * Ia_mag * cosd(Van_angle - Ia_angle);
// Calculations The Wattmeter Reading 2
P2 = Vbn_mag * Ib_mag * cosd(Vbn_angle - Ib_angle);
// Calculations The Wattmeter Reading 3
P3 = Vcn_mag * Ic_mag * cosd(Vcn_angle - Ic_angle);
// Calculations Total Power Absorbed 
PT = P1  + P2 + P3;
//
disp("Example 12-13 Solution : "); 
disp("a. Wattmeter Reading : ");
printf(" \n P1         =  Wattmeter Reading 1             = %.3f Watt",P1)
printf(" \n P2         =  Wattmeter Reading 2             = %.3f Watt",P2)
printf(" \n P3         =  Wattmeter Reading 3             = %.3f Watt",P3)
disp("")
disp("b. Total Power Absorbed : ");
printf(" \n PT         =  Total Power Absorbed            = %.3f Watt",PT)
