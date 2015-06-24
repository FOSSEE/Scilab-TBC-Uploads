// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 9")
disp("The Given Data")
disp("The Following Data D2 is diameter in m, U2 and Cr2 in m/s, alpha1 and beta2 in degrees, Q is i9n m3/s")
D2 = 1
U2 = 11
alpha1 = 90
Cr2 = 2.5
beta2 = 32
Q = 5.5
rho = 1000;
disp("Outlet Velocity Cw2 in m/s is :")
Cw2 = U2 - (Cr2/tan(32*%pi/180))
disp("Power in pump in kilowatts is :")
P = rho*Q*Cw2*U2/(1000*60)
//H.P. = 2*pi*N*T/60
disp("Rpm and Torque T in Nm/s are :")
N = 60*U2/(%pi * D2)
T= P*1000*60/(2*%pi*N)
