// Example2_29_pg131.sce
// Positive Negative and Zero sequence voltages
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 131


clear; clc; close;

// Given data
V_1 = 1000 + 50*%i;
V_2 = -800 + 100*%i;
V_3 = -1100 - 270*%i;
a = cos(2*%pi/3) + %i*sin(2*%pi/3);

// Calculations
disp('According to Equations 2-90, 2-88 and 2-89');
V_0 = (V_1 + V_2 + V_3)/3;
V_1p = (V_1 + V_2*a + V_3*a^2)/3;
V_1n = (V_1 + V_2*a^(-1) + V_3*a^(-2))/3;

printf("\n\nZero sequence voltage is = %0.4f /_ %0.2f Volts \nPositive sequence voltage is = %0.4f /_ %0.2f Volts \nNegative sequence voltage is = %0.4f /_ %0.2f Volts\n",abs(V_0),atan(imag(V_0)/real(V_0))*180/%pi, abs(V_1p),atan(imag(V_1p)/real(V_1p))*180/%pi, abs(V_1n),atan(imag(V_1n)/real(V_1n))*180/%pi);

// Result
//  According to Equations 2-90, 2-88 and 2-89   
//
//
// Zero sequence voltage is = 302.6549 /_ 7.59 Volts 
// Positive sequence voltage is = 558.9050 /_ 13.62 Volts 
// Negative sequence voltage is = 757.9524 /_ -3.15 Volts
