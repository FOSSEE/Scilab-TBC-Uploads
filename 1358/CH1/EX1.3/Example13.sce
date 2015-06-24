// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 1, Example 3")
//The Speed Parameter Equation (N1/T01^(1/2)) = (N2/T02^(1/2))
//Also the mass flow Parameters m1 * (T01^2)/p01 = m2 * (T02^2)/p02
disp("The Compressor speed in rpm, mass flow rate in kg per s are: ")
N2 = 5000 * ((273+25)^(1/2)/(273+18)^(1/2))
m2 = 64 * (65/101.3) * (291/298)^0.5
