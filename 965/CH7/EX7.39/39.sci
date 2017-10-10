clc;
clear all;
disp("velocity of air")
ta=10;//degree C
ts=90;// degree C
L=1.5;//m
B=1;//m
mu=2.209*10^(-5);//kg.m/s
cp=1007.3;//J/kg.C
k=0.02813;//W/m.C
rho=1.0877;//kg/m^3
Pr=0.703;
Q=3.75*1000;//W
As=L*B;
h=Q/(As*(ts-ta));
Nu=h*L/k;
ReL=((Nu/Pr^(1/3)+836)/0.036)^(1/0.8)
U=ReL*mu/(rho*L);
disp("m/s",U,"Velocity of air is")
