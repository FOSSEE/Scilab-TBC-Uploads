// Example1_14_pg29.sce
// To find regulation by percent method
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 29


clear; clc; close;

// Given data
v1 = 1100; // Primary voltage, volts
v2 = 110; // Secondary Open Voltage, volts 
volt_sc = 33; // Voltage for Short Circuit full load current, volts
pow_sc_in = 85; // Short Circuit input Power, watts
pf = +0.8; // Power factor lagging 80%
va_rating = 5e+3 // volt-ampere rating of transformer, VA

// Calculations

// Method based on Eq. 1-38
// %regulation = rpc*cos(theta2) + xpc*sin(theta2) + ((xpc*cos(theta2) - rpc*sin(theta2))^2)/200;
current1 = va_rating/v1; // Current in Amperes
thetae = acos(pow_sc_in /( volt_sc * current1 ));
theta2 = acos(pf);
ze = volt_sc/current1; // Impedance in Ohms
re = pow_sc_in/(current1^2); // Resistance in Ohms
xe = (ze^2 - re^2)^0.5; // Impedance in Ohms
rpc = (current1*re/v1)*100;
xpc = (current1*xe/v1)*100;
percent_regulation = rpc*cos(theta2) + xpc*sin(theta2) + ((xpc*cos(theta2) - rpc*sin(theta2))^2)/200;
printf("Regulation of the Transformer by per-cent method is %.2f %% \n", percent_regulation);

// Result
// Regulation of the Transformer by per-cent method is 2.85 %
