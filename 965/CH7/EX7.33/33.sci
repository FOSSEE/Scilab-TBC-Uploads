clc;
clear all;
disp("percentage error calculation")
ta=20;// degree C
U=10;//m/s
L=5;//m
B=3;//m
ts=40;//degree C
Recr=5*10^5;
k=0.0263;//W/m.C
v=15.89*10^(-6);//m^2/s
Pr=0.707;
ReL=U*L/v;
Nu=0.0375*(ReL^0.8-23200)*Pr^(1/3);
h=Nu*k/L;
A=L*B;
Q1=ceil(h*A*(ts-ta))// combination of laminar and turbulent

Nu=0.0375*(ReL^0.8)*Pr^(1/3);
h=Nu*k/L;
Q2=ceil(h*A*(ts-ta))// if entire boundary layer is assumed as turbulent
e=(Q2/Q1-1)*100;
disp("%",e,"Percentage error =")


