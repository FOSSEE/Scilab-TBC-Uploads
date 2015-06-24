// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 6")
// Velocity of flow through impeller is constant so Cr1 = Cr2 = 3.5 m/s
disp("Tangential Velocity of impeller at inlet in m/s is :")
//Din and D2 are diameters in meters, N is in rpm, Cr2 in m/s
Din = 0.3;
D2 = 0.6;
N = 950;
Cr2 = 3.5;
U1 = %pi * Din * N / 60
//tanalpha1 = Cr1/U1 3.5/14.93 = 0.234
disp("vane inlet angle of pump alpha1 : ")
alpha1 = atan(0.234) * 180/ %pi
disp("Tangential velocity of impeller at outlet in m/s:")
U2 = %pi * D2 * N / 60
disp("Now For velocity of whirl at impeller outlet,using velocity triangle.in m/s is :")
Cw2 = U2 - Cr2 / tan(46*%pi/180)
//As c2^2 = Cw2^2 + Cw2^2 , Therefore
disp(" Velocity of water at outlet C2 in m/s is :")
C2 = (Cr2^2 + Cw2^2)^(1/2)
disp("alpha2 be the direction of water outlet, Thus we have :")
alpha2 = atan(Cr2/Cw2)*(180/%pi)
disp("Work Done in Newton meters is given by :")
W = Cw2*U2
