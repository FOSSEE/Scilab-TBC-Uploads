clc;
clear all;
disp("required tube legth")
m=0.5;//mg/min
D=0.02;//m
v=0.478*10^(-6);//m^2/s
cp=4.178*10^3;//J/kg.K
Nu=3.65;
rho=983.2;//k/m^3
k=0.659;//W/m.C
ti=20;// degree C
to=50;// degree C
ta=85;//degree C
A=%pi*D^2/4;//m^2
m=m/60;//kg/sec
u=m/(rho*A);//m/s
Re=D*u/v;
h=Nu*k/D
tb=(ti+to)/2;//degree C
Q=m*cp*(to-ti)
L=Q/(%pi*D*h*(ta-tb));//m
disp("m",L,"length of tube required for fully developed flow, L =")

