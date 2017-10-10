clc;
clear all;
disp("drag force value")
L=5;//m
W=0.75;//m
U=5;//m/s
v=0.011*10^(-4);//m^2/s/m^3
rho=1000;//kg
ReL=U*L/v;// reynolds number at the end of plate
A=L*W;
Cf=0.455/(log10(ReL))^2.58;
Fd=2*Cf*(0.5*rho*A*U^2);
disp("N",Fd,"Drag force =")
