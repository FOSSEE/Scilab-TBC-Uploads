clc;
clear all;
disp("heat loss from gases")
U=70;//m/s
L=1.2;//m
B=0.8;//m
ts=950;//degree C
ta=280;//degree C
ReL=5*10^5;
Pr=0.625;
k=0.075;//W/m.C
v=95*10^(-6);// m^2/s
ReL=U*L/v;
Nu=(0.036*(ReL^0.8)-836)*Pr^(1/3)
h=Nu*k/L;
Q=h*L*B*(ts-ta);//W
disp("kW",Q/1000,"Heat loss from crank is Q=")
