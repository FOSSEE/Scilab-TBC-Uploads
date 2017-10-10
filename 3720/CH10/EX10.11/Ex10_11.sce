// Example 10_11
clc;clear;funcprot(0);
//Given data
T=19;// °C
D=30/100;// Diameter in m
x=30/100;// Length of the tunnel in m 
V_b=4.0;// Velocity at beginning in m/s
nu=1.507*10^-5;// m^2/s

// Calculation
Re_x=(V_b*x)/nu;// Reynolds number
delta=((1.72*x)/(sqrt(Re_x)))*10^3;// The displacement thickness at the end of the test section in mm
R=D/2;// Radius of the tunnel in m
V_end=(V_b*(%pi*R^2))/(%pi*(R-(delta/1000))^2);// The average air speed at the end of the test section in m/s
printf('\nThe average air speed at the end of the test section=%0.2f m/s',V_end);
