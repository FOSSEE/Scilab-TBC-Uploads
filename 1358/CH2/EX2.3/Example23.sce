// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 3")
D2 = 0.4;
N= 1400;
disp ("Impeller tip speed given by piDN/60 in m/s is :  ")
U2 = %pi * D2 * N /60
disp("whirl velocity at tip in m/s is : ")
Cr2 = 2.6;
Cw2 = (U2 - Cr2 / tan(25*%pi/180))
//From velocity Triangle 2.3 tangent alpha2 = Cr2/Cw2 = 2.6/23.75 = 0.1095
disp("Alpha2 is in degrees")
alpha2 = atan(0.1095) *180/(%pi)
disp("Impeller velocity at inlet in m/s is : ")
D1 = 0.2;
U1 = %pi * D1*N /60
//From velocity Triangle 2.3 tangent beta1 = Cr1/U1 = 2.6/14.67 = 0.177
disp("Beta1 is in degrees")
beta1 = atan(0.177) * 180 /(%pi)
disp("Work done per kg of water in Joules is : ")
W = Cw2 * U2
