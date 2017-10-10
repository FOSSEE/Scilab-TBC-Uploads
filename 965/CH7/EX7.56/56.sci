clc;
clear all;
disp("required tube length")
m=1.6;//m/s
d=20/1000;//m diameter of tube
tc1=15;// degree C temperature of enterting mercury
tc2=35;// degree C temperature of leaving mercury
ts=50;// degree C wall temperature
rho=13582;//kg/m^3
k=8.69;// W/m.C
cp=140;// J/kg.K
v=1.5*10^(-7);// m^2/s
Pr=0.0248;
Re=4*m/(%pi*d*rho*v)
Nu=7+0.025*(Pr*Re)^0.8
h=k*Nu/d// W/m^2.C
tc=(tc1+tc2)/2;
Q=m*cp*(tc2-tc1)
As=Q/(h*(ts-tc));
L=As/(%pi*d);
disp("m",L,"Required tube length = ")
