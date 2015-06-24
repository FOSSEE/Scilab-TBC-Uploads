// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 11")
Cv = 2.08;
g = 9.81;
H = 5.5;
Cv1 = 0.68;
U1 = Cv*(2*g*H)^0.5
Cr1 = Cv1*(2*g*H)^0.5
N = 65;
disp("Now power is given by")
P = 9000;
eta = 0.85;
Q = P / (g * H * eta)
disp("If D is the runner diameter and, d, the hub diameter")
D = (Q*4*9/(%pi*Cr1*8))^0.5
disp("Solving")
Ns = N * P^0.5 / H^1.25
