clc;
clear all;
disp("heat transfer from plate")
ta=20;//degree C
U=40;//m/s
ts=60;// degree C
L=1;//m
B=1;//m
Pr=0.699;
k=0.0275;//W/m.C
v=16.96*10^(-6);// m^2/s
rho=1.128;//kg/m^3
cp=1005;//J/kg.K
ReL=U*L/v;;
Nu=(0.037*(ReL^0.8)-850)*Pr^(1/3)
h=Nu*k/L;
Q=h*L*B*(ts-ta);//W
disp("W",Q,"Heat loss from plate is Q=")
