clc;
clear all;
disp("heat transfer coefficient")
s=20/1000;//m side of channel
L=2.5;//m length of channel
U=4.5;//m/s
tb=30;// degree C
ts=70;// degree C
rho=995.7;// kg/m^3
k=0.6175;// W/m.C
v=0.805*10^(-6);// m^2/s
Pr=5.42;
Prs=2.55;// Pr at 70 degree C
Deq=4*s*s/(4*s)//m
Re=U*Deq/v
Nu=0.021*Re^0.8*Pr^0.43*(Pr/Prs)^0.25
h=Nu*k/Deq;
disp("W/m^2.C",h,"heat transfer coefficient =")

