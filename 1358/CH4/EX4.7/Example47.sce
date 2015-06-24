// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 7")
disp("Temperature equivalent of work done:")
disp("Weq = T02 - T01")
T02 = 440;//kelvin
T01 = 290;//kelvin
sigma = 0.88;
psi = 1.04;
Cp = 1005;
N = 10000;//rpm
U2 = ((T02-T01)*Cp/(sigma*psi))^0.5//m/s
D = 60*U2/(%pi*N)//m
disp("The overall pressure ratio is given by: P03/P01")
etac = 0.85;
ratio = (1+etac*sigma*psi*U2^2 /(Cp*T01))^3.5
disp("Power required to drive the compressor per unit mass flow:")
m = 1;
P = m*psi*sigma*U2^2  / 1000//kW
