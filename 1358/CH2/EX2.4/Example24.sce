// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 4")
//Q is discharge rate, beta2 is angle of vane at outlet, H is head, Diaratio is diameter ratio of external by internal dia, N is rpm, A is area of outer periphery
Q = 1550;
beta2 = 25;
H = 6.2;
Diaratio = 2;
D2 = 1.2;
N = 210;
A = 0.65;
disp("Velocity of flow at impeller tip in m/s is :")
Cr2 = Q/(A*1000)
disp("Impeller tip speed in m/s is :")
U2 = %pi * D2 * N / 60
Cw2 = U2 - Cr2 / tan(%pi*25/180)
disp("TheoH is theoritical head in m")
TheoH = Cw2 * U2/9.81
 //Assuming slip factor sigma = 1, efficiency is
 disp("efficiency is ")
 etah = H * 100 / TheoH
 //Power is denoted by P
 disp("Power in kilowatts is : ")
 P = Q * TheoH * 9.81 / 1000
 disp("Centrifugal head is minimum head. Thus we get: ")
 //U2^2-U1^2/2g = 6.2
 //U1 = U2/2
 U2 = (2 * 9.81 * 6.2 /(1-0.25))^(1/2)
 disp("minimum speed in rpm is :")
 minN = U2 * 60 / (%pi * D2)
 
