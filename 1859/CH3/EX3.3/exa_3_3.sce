// Exa 3.3
clc;
clear;
close;
// Given data
N= 100;
B=6*10^-2;// in Wb/m^2
A=3*4;// in cm^2
A=A*10^-4;// in m^2
V=300;// in volt
R=12000;// in ohm
i= V/R;// in amp
Td=N*i*B*A;//in Nm
Tc_BY_theta= 25*10^-7;// in Nm/°
// Formula Tc=Td
theta= Td/Tc_BY_theta;// in °
disp(theta,"Deflection in degree")
