// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 1, Example 1")
//Linear ratio L = Lp/Lm = Bp/Bm = Dp/Dm
// We know P1/(rho1*(N1)^3*(D1)^5) = P2/(rho2*(N2)^3*(D2)^5)
//Pressure equation rho1 = rho2
//Hence, D2/D1 = 0.238(N1/N2)^(3/5)
//Also (g*H1)/(N1*D1)^2 = (g*H2)/(N2*D2)^2
//Therefore 0.238 (N1/N2)^(3/5) = (6/16)^(N1/N2)
//Hence, (N2/N1)^(2/5) = 2.57
disp ("Therefore Model Speed N2 in rpm, Model Scale Ratio RD and Volume flow rate(Q)in cubic meters per second are:")
N2 = 100 * 2.57^(5/2)
RD = 0.238 * (100/1059)^(3/5)
Q = 42 * 1000 / (0.92*1000*9.81*6)
