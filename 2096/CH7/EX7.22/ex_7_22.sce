//Example 7.22 // sensitivity 
clc;
clear;
close;
//given data : 
d=0.06; // in mm
Rg=120; // in ohm
Gf=2; // gauge factor
v=6; // im volts
E=200; // GN/m^2
mu=0.3; // poisson's ratio
l=1000; // consider a load applied in N
Si=l/((%pi/4)*(d)^2)
e=Si/(E*10^9);
R=Gf*e;
dVo=2*(1+mu)*R*(v/4)*10^-6;
S=dVo/(l*1000);
disp(S*10^18,"the sesitivity,S(microvolt/kN) = ")
