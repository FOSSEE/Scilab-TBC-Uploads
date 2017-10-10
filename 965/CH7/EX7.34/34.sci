clc;
clear all;
disp("local HT coefficient")
U=50;//m/s
Cfx=0.004;
k=0.035;//W/m.C
cp=1001;//J/kg.K
rho=0.88;//kg/m^3
mu=2.286*10^(-5);//kg.m/s
Pr=mu*cp/k
m=rho*cp*U
//St=hx/m
//St*Pr^(2/3)=Cfx/2
St=Cfx/(2*Pr^(2/3))
hx=St*m;
disp("W/m^2.K",hx,"local HT coefficient, hx = ")
