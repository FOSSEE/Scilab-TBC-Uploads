// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 22")
disp("Head, H = 8 m, Power, P = 10,000kW")
disp("Overall efficiency, etao = 0.86")
P = 10000;
g = 9.81;
H = 8;
rho = 1000;
U1 = 2*(2*g*H)^0.5
disp("Flow ratio Cr1/(2gH)^0.5")
Cr1 = 0.6*(2*g*H)^0.5
disp("Hub diameter, D1 = 0.35 D2")
disp("Overall efficiency,etao = P/rho*gQH")
etao = 0.86;
Q = P/(rho*g*H*etao) * 1000
disp("Now using the relation")
disp("Q = Cr1 * pi*(D1^2- D2^2)/4")
D1 = (Q*4/(Cr1*%pi*(1-0.35^2)))^0.5
disp("The peripheral velocity of the turbine at inlet")
N = U1*60/(%pi*D1)
