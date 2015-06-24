// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 5")
//H is head in m, Q is discharge m3/s, eta is efficiency, P is power
disp("Power P in Horse power is :")
H = 35;
Q = 0.045;
eta = 0.6;
//P = rho gQ/eta in joules per second
P = 9.81 * Q * H / (0.6 * 0.746)
