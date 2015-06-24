// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 1, Example 2")
// While equating flow coefficients Q1 / (N1 * D1^3) = Q2 / (N2 * D2^30)
//Also the head equation we follow is g*H1/(N1^2*D1^2) = g*H2/(N2^2*D2^2)
disp("Volume flow rate in cubic meters per second and Head in meters are:")
Q2 = 2.5*2210*(0.104)^3/(2010*(0.125)^3)
H2 = 9.81 * 14 * (2210*104)^2 /(((2010*125)^2)*(9.81))
