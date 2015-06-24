// To find percentage error
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 6-6 in Page 163


clear; clc; close;

// Given data
R = 10; //Resistance of the coil in ohm
f = 1*10^6; //The oscillator frequency in Hz
C = 65*10^-12; //The value of resonating capacitor in F
R_i = 0.02; //The value of the insertion resistor in ohm

//Calculations
w = 2*%pi*f;
Q_e = 1/(w*C*R);
printf("The effective Q of the coil = %0.1f\n",Q_e);
Q_i = 1/(w*C*(R+R_i));
printf("The indicated Q of the coil = %0.1f\n",Q_i);
%error = (Q_e - Q_i)/Q_e*100;
printf("The percentage error is = %0.1f %%",%error);

//Result
// The effective Q of the coil = 244.9
// The indicated Q of the coil = 244.4
// The percentage error is = 0.2 % 

