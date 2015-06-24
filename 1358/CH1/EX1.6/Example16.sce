// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 1, Example 6")
// Geometric and Dynamic similarity equations Q1 / (N1 * D1^2) = Q2 / (N2 * D2^2)
// Head coefficient W2 = W1 * N2^2 * D2^2 / (N1^2 * D1 ^2)
// Also Pressure Delta P = W2 * eta tt * rho
disp("Flow rate in cubic meters per minute , Head coefficient in J/kg, Change in Total Pressure in bar , Input Power P in kilowatt are : ")
Q2 = 2.5 * 2900 * 0.22^2 / (1450 * 0.32^2)
W2 = 120 * 2900 ^ 2 * 0.22 ^ 2 / ((1450)^2 * 0.32^2)
Pressure = 226.88 * 0.78 * 1000 /100000
P = 1000 * 2.363 * 0.22688 / 60
