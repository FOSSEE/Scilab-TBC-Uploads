// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 14")
disp("Given data D1 and D2 in meters, N in rpm, Cr2 in m/s and beta2 in degrees")
D1 = 0.2
D2 = 0.4
N = 1500
Cr2 = 2.8
beta2 = 30
disp("Impeller tip speed, U2 in m/s, is")
U2 = %pi*D2*N/60
disp("Whirl component of absolute velocity Cw2 at impeller exit is")
Cw2 = U2 - Cr2/tan(30*%pi/180)
//As tan(alpha2)=2.8/26.58 = 0.1053
alpha2 = atan(0.1053) * 180 /%pi
disp("Impeller speed at inlet U1 in m/s is ")
U1 = %pi * D1*N/60
//tan(beta1) = 2.8/15.7 = 0.178
beta1 = atan(0.178)*180/%pi
disp("Work done per kg of water W in Nm :")
W = Cw2*U2
