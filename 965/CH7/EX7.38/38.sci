clc;
clear all;
disp("heat transfer from surface")
ta=20;//degree C
U=35;//m/s
ts=60;// degree C
L=0.75;//m
B=1;//m
mu=1.906*10^(-5);//kg.m/s
cp=1007;//J/kg.K
k=0.0272;//W/m.C
P=1.0132*10^5;//Pa
R=287;
Pr=mu*cp/k
rho=P/(R*(ta+273))//kg/m^3
ReL=rho*U*L/mu
Nu=(0.037*(ReL^0.8)-850)*Pr^(1/3);
h=Nu*k/L
Q=h*L*B*(ts-ta);//W
disp("W",Q,"Heat loss from surface is Q=")
