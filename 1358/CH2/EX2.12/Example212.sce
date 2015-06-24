// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 12")
disp("Exit blade angle beta2 =20 degres")
beta2 = 20;
U2 = 56; //U2 in m/s
Cr2 = 7.5; //in m/s
CW2 = U2 - Cr2/tan(20*%pi/180)
disp("Using slip factor :")
sigma = 0.88
disp("The velocity whirl at exit is :")
Cw2 = sigma*CW2
disp("Work input per kg of water flow in KJ/kg")
W = Cw2*U2/1000
disp("Absolute velocity at impeller tip C2 in m/s is :")
C2 = (Cr2^2 + Cw2^2)^(1/2)
