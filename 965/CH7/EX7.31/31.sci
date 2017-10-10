clc;
clear all;
disp("surface drag of train")
L=200;//m
p=9;//m perimeter above wheels
v=1.5*10^(-5);//m^2/s
rho=1.24;//kg/m^3
u=90;//km/h
U=u*5/18;//m/s
A=L*p;
ReL=U*L/v;
Cf=0.455/(log10(ReL))^2.58-1670/ReL;
Fd=Cf*0.5*rho*A*U^2;
disp("N",Fd,"Drag force =")

