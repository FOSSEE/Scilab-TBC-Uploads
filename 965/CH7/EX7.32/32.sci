clc;
clear all;
disp("Total drag force")
L=30;//m
A=30*10;//m^2
U=0.6;//m/s
ReL=5*10^5;
rho=998;//kg/m^3
v=10^(-6);//m^2/s
xc=ReL*v/U;//m
del=5*xc/ReL^0.5;//m
disp("mm",del*1000,"Maximum boundary layer thickness =")
ReL=U*L/v;
Cf=0.455/(log10(ReL))^2.58-1670/ReL;
Fd=Cf*0.5*rho*A*U^2;//N
disp("N",Fd,"The total drag force =")
P=Fd*U;//W
disp("W",P,"Power required =")
