clc;
clear all;
disp("diffusivity of air")
A=0.5;//m^2
pi=2.2;// bar
pf=2.18;// bar
T=300;// K
S=0.072;//m^2
V=0.028;//m^3
L=10/1000;//m
R=287;// gas constant

mi=pi*10^5*V/(R*T);//kg
mi
mf=pf*10^5*V/(R*T);//kg
mf
ma=mi-mf;//kg
ma
Na=ma/(6*24*3600)*A;// kg/(s.m^2)
Na
pm=(pi+pf)/2;
S=0.072*pm;//m^3//m^3 of rubber
S
p1=2.19*10^(5);
p2=1*10^(5);
V1=0.1577;
V2=0.072;
Ca1=p1*V1/(R*T);// kg/m^3 
Ca1
Ca2=p2*V2/(R*T);// kg/m^3 
Ca2
//Na=D*(Ca1-Ca2)/L;
D=Na*L/(Ca1-Ca2);

disp("m^2/s",D,"diffusivity = ")


