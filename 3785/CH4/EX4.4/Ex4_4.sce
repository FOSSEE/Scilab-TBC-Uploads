// Example 4_4
clc;funcprot(0);
// Given data
V_1=50;// Velocity in m/s
alpha=45;// Angle in degree
g=9.807;// The acceleration due to gravity in m/s^2

// Calculation
w_1=V_1*sind(alpha);// m/s
h=(w_1)^2/(2*g);// Height in m
printf("\nThe maximum value of h is %2.2f m",h)
