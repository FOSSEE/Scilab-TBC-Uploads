clc;
clear all;
disp("Hear loss from crank")
A=80*20*10^(-4);//m^2
ta=15;//degree C
U=25;//m/s
ts=85;// degree C
L=0.8;//m
B=0.2;//m
Pr=0.698
k=0.02824;//W/m.C
v=17.95*10^(-6);// m^2/s
ReL=U*L/v;
Nu=0.036*(ReL^0.8)*Pr^(1/3);
h=Nu*k/L;
Q=h*A*(ts-ta);//W
disp("W",Q,"Heat loss from crank is Q=")
