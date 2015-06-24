// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 10")
disp("Inlet stagnation temperature:")
R = 287;
Ta = 298;
C1 = 145;
Cp = 1005;
T01 = Ta + C1^2 /(2*Cp)
disp("Using the isentropic P–T relation for the compression process,")
disp("x = P03/P01")
x = 4;
T03a = T01 * (4)^0.286
disp("Using the compressor efficiency,")
disp("T02-T01 = y")
T02a = T03a;
etac = 0.89;
y = (T02a-T01)/etac
disp("Hence, work done on the air is given by: in kJ/kg")
W = Cp * y / 1000
U2 = (W*1000/0.89)^0.5 //m/s
disp("Hence, the impeller tip diameter")
N = 15000;//rpm
D = 60*U2/(%pi*N)//m
disp("The air density at the impeller eye is given by:")
P1 = 1*100;
rho1 = P1/(R*Ta)* 1000
disp("Using the continuity equation in order to find the area at the impeller eye,")
m = 8;//kg/m
A1 = m/(rho1*C1) //m2
disp("The power input is: in kW")
P = m*W
