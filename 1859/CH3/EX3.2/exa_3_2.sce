// Exa 3.2
clc;
clear;
close;
// Given data
N= 125;
A=4*2.5;// in cm^2
A=A*10^-4;// in m^2
i=25;// in mA
i=i*10^-3;// in A
B=0.06;// in T
Td=N*i*B*A;//in Nm
Tc_BY_theta= 25*10^-7;// in Nm/°
// Formula Tc=Td
theta= Td/Tc_BY_theta;// in °
disp(theta,"Deflection in degree")
