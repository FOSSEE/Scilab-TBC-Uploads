// Exa 3.1
format('v',7);clc;clear;close;
// Given data
N = 100;// number o turns
B = 0.15;//air gap in Wb/m^2
I = 5;//current in mA
I = I * 10^-3;// in A
l= 10;//length in mm
b = 8;//width in mm
A = l*b;//area in mm^2
A = A * 10^-6;// in m^2
Td = N*B*A*I;//deflecting torque in Nm
K = 0.2*10^-6;// in Nm/degree
// Td = Tc= K*theta;
theta = Td/K;//deflecting in degrees
disp(theta,"The deflecting in degrees is");
