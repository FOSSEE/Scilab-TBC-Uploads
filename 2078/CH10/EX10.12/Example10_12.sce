//Exa 10.12
clc;
clear;
close;
//Given data :
wc=1.925;//kg/m
A=2.2;//cm^2
f=8000;//kg/cm^2
L=600;//m
h=15;//m
D=2;//cm
SF=5;//safety factor
wi=1;//kg(load)
w=wi+wc;//kg
T=f*A/SF;//kg
x=L/2-T*h/(w*L);//m
S2=w*(L-x)^2/2/T;//m
disp(S2,"Vertical Sag(meter)");
