// To find the self capacitance
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 6-5 in Page 162


clear; clc; close;

// Given data
// Values of frequencies in Hz
f_1 = 2*10^6;
f_2 = 5*10^6;
// Values of the tuning capacitors in F
C_1 = 450*10^-12;
C_2 = 60*10^-12;

//Calculations

//Using the equation f = 1/(2*%pi*sqrt(L*(C_2+C_d)));
//Since f_2 = 2.5*f_1
//Equating & reducing the equations
// 1/(C_2 +C_d) = 6.25/(C_1 +C_d)

C_d = (C_1 -6.25*C_2)/5.25
printf("C_d = %0.2E F\n",C_d);
printf("i.e The value of the distributed capacitance = %0.1f pF",(C_d*10^12));

//Result
// C_d = 1.43E-011 F
// i.e The value of the distributed capacitance = 14.3 pF 


