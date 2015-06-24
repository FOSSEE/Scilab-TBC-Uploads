// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 2")
//Fluid is entering in radial direction
Cw1 = 0;
alpha1 = 90; //angle is in degrees
beta2 = 22; //angle in degress
Ca1 = 3.5; //velocity of flow in m/s
D= 0.22;
N=1250;
//Ca1 = Ca2
Ca2 = 3.5;
//Head developed H = Cw2*U2/g
//Impeller tip Speed U2 = pi*D*N/60
disp ("Impeller tip speed in m/s is : ")
U2 = %pi * D * N / 60
disp("Whirl velocity at impeller outlet, in m/s is : ")
Cw2 = (U2 - Ca2/tan(22*%pi/180))
disp("Head Imparted is H in meters : ")
H = Cw2 * U2 / 9.81
