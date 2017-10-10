clc;
clear all;
disp("heat loss from duct")
m=0.06;//kg/s
d=180/1000;// m diameter
ts=110;// degree C temperature of air entering
L=4.5;//m length
t=70;// degree C temperature of cooled air
ta=5;// degree C ambient temperature
ho=6.5;// W/m^2.C
tb=(ts+t)/2;// bulk temperature
rho=0.972;// kg/m^3
cp=1009;// J/kg.C
k=0.03127;// W/m.C
v=22.1*10^(-6);// m^2/s
mu=22.14*10^(-6);// kg/m.s
Pr=0.69;
Re=4*m/(%pi*d*mu);
Q=m*cp*(ts-t);
disp("W",Q,"Heat loss from duct over its 4.5 m length =")
Nu=0.023*Re^0.8*Pr^(1/3);
hi=k*Nu/d;
Rth=1/hi+1/ho;// thermal resistance
Qa=(t-ta)/Rth;// heat flux
disp("W/m^2",Qa,"Heat flux Q/A =")
tl=t-Qa/hi;
disp("degree C",tl,"Surface temperature at a length of 4.5 m =")
