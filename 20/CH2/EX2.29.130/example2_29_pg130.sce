// Example2_29_pg130.sce
// Positive and negative sequence voltages
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 130


clear; clc; close;

// Given data

V_1 = 1000 + %i*50;
V_2 = -800 + %i*100;
V_3 = -200 - %i*150;
a = cos(2*%pi/3) + %i*sin(2*%pi/3);

// Calculations

disp('According to Equations 2-88 and 2-89 in page 130');
V_1p = (V_1 + V_2*a + V_3*a^2)/3;
V_1n = (V_1 + V_2*a^(-1) + V_3*a^(-2))/3;

printf("\n\nPositive sequence voltage is = %0.4f /_ %0.2f Volts \nNegative sequence voltage is = %0.4f /_ %0.2f Volts\n", abs(V_1p),atan(imag(V_1p)/real(V_1p))*180/%pi, abs(V_1n),atan(imag(V_1n)/real(V_1n))*180/%pi);

// Result
//  According to Equations 2-88 and 2-89 in page 130   
//
//
// Positive sequence voltage is = 452.7740 /_ -19.11 Volts 
// Negative sequence voltage is = 605.5265 /_ 19.11 Volts
