clc;
clear all;
disp("heat transfer coefficient")
Fd=10.5;//N
ts=95;//degree C
ta=25;//degree C
U=30;//m/s
rho=1.06;//kg/m^3
cp=1005;//J/kg.K
v=18.97*10^(-6);// m^2/s
Pr=0.696;
//ReL=U*L/v
//Cf=0.072/ReL^0.2
//A=L^2;
//F=Cf*0.5*rho*A*U^2;
//10.5=2.05*L^0.8
L=(10.5/2.05)^(1/1.8)
ReL=U*L/v;
Cf=0.072/ReL^0.2;
h=rho*cp*U*Cf/(2*Pr^(2/3));
disp("W/m^2.C",h,"Heat transfer coefficient =")
Q=h*L^2*(ts-ta);
disp("W",Q,"Heat lpss from plate surface = ")
