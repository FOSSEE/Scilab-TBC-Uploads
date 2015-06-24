// To find percentage error
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 6-7 in Page 163


clear; clc; close;

// Given data
R = 0.1; //Resistance of the coil in ohm
f = 40*10^6; //The frequency at resonance in Hz
C = 135*10^-12; //The value of tuning capacitor in F
R_i = 0.02; //The value of the insertion resistor in ohm


//Calculations
w = 2*%pi*f;
Q_e = 1/(w*C*R);
printf("The effective Q of the coil = %d\n",ceil(Q_e));
Q_i = 1/(w*C*(R+R_i));
printf("The indicated Q of the coil = %d\n",ceil(Q_i));
%error = (Q_e - Q_i)/Q_e*100;
printf("The percentage error is = %d %%",ceil(%error));

//Result
// The effective Q of the coil = 295
// The indicated Q of the coil = 246
// The percentage error is = 17 % 
 
