// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 7")
//From Figure Ex26
//Finding Manometric Efficiency
//D2 is dia in meters, N in rpm, Head H in meters ,Cr2 and Cw2 in m/s 
D2 = 0.5;
D1 = 0.25;
N = 500;
H = 10;
Cr2 = 2;
beta2 = %pi/4;
Cr1 = 2;
//etaman = H/(Cw2*U2/g)
disp("Outlet Velocity be U2 in m/s :")
U2 = %pi * D2 * N / 60
//To Find Cw2
Cw2 = 13-2/(tan(%pi/4))
disp(" Manometric Efficiency be etaman in %: ")
etaman = H*9.81/(Cw2*U2)  *100
disp("Vane Angle at inlet beta 1 in degrees is :")
//U1 = U2/2
beta1 = atan(Cr1/(U2/2))*(180/%pi)
disp("Minimum Starting speed N in rpm is :")
//(U2^2-U1^2/2g = H implies 
Nmin = ((2*9.81*10)/((%pi*D2/60)^2 -(%pi*D1/60)^2))^(1/2)
