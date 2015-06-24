// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 21")
disp("Given data")
D2 = 0.9//m
D1 = 0.45//m
Ns = 1150//rpm
Cr = 2.5 //m/s
H = 5.5//m
disp("H,D2 and D1 are in meters, Ns in rpm, Cr in m/s")
Q = (%pi*(D2^2-D1^2)/4 )*Cr*1000
disp("Q in l/s")
N = Ns*H^0.75/Q^0.5
disp("Therefore N = 120")
disp("In order to find vane angle at entry, using velocity triangle at inlet,U1 in m/s is:")
U1 = %pi*D1*N/60
alpha = atan(Cr/U1)*180/%pi
