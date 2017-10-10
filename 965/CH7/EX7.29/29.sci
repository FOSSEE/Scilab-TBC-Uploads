clc;
clear all;
disp("Total power required")
L=50;//m
D=5;//m
U=8;//m/s
ta=20;// degree C
rho=1030;//kg/m^3
v=10^(-6);//m^2/s
ReL=U*L/v;
Rex=5*10^5;
x=Rex*v/U;
Cf=0.455/(log10(ReL))^2.58;
A=%pi*D*L;//m^2
Fd=Cf*0.5*rho*A*U^2;
P=Fd*U/1000;//kW
disp("kW",P,"Power required =")
