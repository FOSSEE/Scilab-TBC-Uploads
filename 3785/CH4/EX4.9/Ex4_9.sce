// Example 4_9
clc;funcprot(0);
// Given data
R=5;// The radius of a jar in cm
n=33;// tThe turntable has been revolving at a steady speed in rpm
g=9.807;// The acceleration due to gravity in m/s^2

// Calculation
omega=(2*%pi*n)/60;// Acceleration
h=(omega*R*10^-2)^2/(2*g);// The height h in m
printf("\nThe height,h=%1.3e m",h);
