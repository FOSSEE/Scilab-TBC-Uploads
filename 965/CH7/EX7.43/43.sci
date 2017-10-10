clc;
clear all;
disp("average HT coefficient")
D=2/100;//m diameter of tube
tf=30;//degree C
m=2940;//kg/h
ts=100;// degree C
L=5;//m
k=0.12;//W/m.C
cp=2000;//J/kg.K
v=5.14*10^(-6);// m^2/s
rho=850;//kg/m^3
m1=m/3600;//kg/s
As=%pi*D^2/4;
U=m1/(As*rho)//m/s
Pr=v*rho*cp/k
ReL=10^3*ceil(U*D/v/10^3)
Nu=0.023*(ReL^0.8)*Pr^(1/3)
h=Nu*k/D;
disp("W/m^2.C",h,"Average heat transfer coefficiet h =")

