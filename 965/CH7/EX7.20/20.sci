clc;
clear all;
disp("Heat loss calculation")
ta=30;//degree C
ts=90;// degree C
U=2.8;// m/s 
v=18.97*10^(-6);// m^2/s
kp=25;// W/m.C
L=1;//m
ka=0.02894;// W/m.C
rho=1.06;//kg/m^3
Cp=1005;//J/kg.K
L=1;//m 
B=600/1000;// m
Pr=0.696;
delta = 25/1000;//m
disp("i)Heat lost by the plate :")
Re = U*L/v;// Reynold's number at trailing edge
Nu=0.664*(Re^0.5)*(Pr^(1/3));
h=Nu*ka/L;// W/m^2.C
As=1*0.6;//m^2;// W
Q=h*As*(ts-ta);
disp("W",Q,"Heat loss by the plate is ")
disp("ii) Bottom temperature of plate, tb :")
tb = -1*Q*delta/(kp*As)+ts;// degree C
disp("degree C",tb,"Bottom temperature of the plate is ")


