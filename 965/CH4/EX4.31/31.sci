clc;
clear all;
disp("Time for cooling")
L=20/1000;//m
ti=150;// degree C
ta=30;//degree C
hw=100;// W/(m^2.C)
ha=20;// W/(m^2.C)
t=90;// degree C
rho=8800;//kg/m^3
c=400;// J/kg.C
k=360;//W/(m.C)

As=4*3.1416*R^2;
Lc=L/2;//m
Bi=h*Lc/k;

C=120;
tau=-rho*L*c*log((t-ta)/(ti-ta))/C
disp("minutes",tau/60," time,  Tau =")



