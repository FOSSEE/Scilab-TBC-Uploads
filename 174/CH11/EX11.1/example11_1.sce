// To find change in resistance
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 11-1 in Page 317


clear; clc; close;

// Given data
K =2; //Gauge factor 
s = 1050; //stress in kg/cm^2
E = 2.1*10^6; //modulus of elasticity of steel in kg/cm^2

//Calculations
strain = s/E; //Hooke's law
change_in_resistance = K*strain;
%change = change_in_resistance * 100;

printf("The change in resistance = %0.3f\n",change_in_resistance);
printf("The percentage change in resistance = %0.1f %%",%change);

//Result
// The change in resistance = 0.001
// The percentage change in resistance = 0.1 % 
