// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 23")
disp("Inner Diameter,")
D2 = 0.45
disp("Outer Diameter,")
D1 = 0.9
disp("Radial Discharge")
alpha2 = 90
Cr2 = 2.8
Cr1 = Cr2
disp("From velocity triangle at inlet, The peripheral velocity of the wheel at inlet")
alpha1 = 12
U1 = Cr1/tan(alpha1*%pi/180)
N = 60*U1/(%pi*D1)
disp("Considering velocity triangle at outlet peripheral velocity at outlet")
U2 = %pi*D2*N/60
beta2 = atan(Cr2/U2)*180/%pi
