// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 14")
disp("Discharge, Q")
Q = 0.5//m3/s
disp("Velocity of flow at inlet, Cr1")
Cr1 = 1.5//m/s
disp("Velocity of periphery at inlet, U1")
U1 = 20
disp("Velocity of whirl at inlet, Cw1")
Cw1 = 15
disp("As the velocity of flow is constant, Cr1 = Cr2")
Cr2 = Cr1
disp("Let beta1 = vane angle at inlet")
disp("From inlet velocity triangle")
beta1 = 180 - atan(Cr1/(U1-Cw1)) *180/%pi
g = 9.81;
disp("Since the discharge is radial at outlet, and so the velocity of whirl at outlet is zero. Therefore,")
H = Cw1*U1/g + Cr1^2/(2*g)//m
