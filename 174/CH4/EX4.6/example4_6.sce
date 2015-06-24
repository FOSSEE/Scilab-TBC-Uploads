// To find the value of unknown resistor
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 4-6 in Page 64


clear; clc; close;

// Given data
S = 100; //Sensitivity of the voltmeter
// Three ranges of the voltmeter
V_1 = 50;
V_2 = 150;
V_3 = 300;
V_p = 4.65; //Reading of the meter on its 50-V scale
R_s = 100*10^3;
E = 100; //emf applied in volt
//Calculations
R_V = S * V_1;
R_p = ceil(V_p *R_s/ (E -V_p)); //R_p is the parallel resistance of R_x and R_v
R_x = R_p *R_V/ (R_V -R_p);
printf("The value of the unknown resistance R_x = %0.1e ohm",ceil(R_x));

//Result
// The value of the unknown resistance R_x = 2.0e+005 ohm 