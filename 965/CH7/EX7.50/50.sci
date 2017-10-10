clc;
clear all;
disp("heat transferred per meter")
ta=15+273;//K air temperature
ts=605+273;//K plate temperature
U=6.5;// m/s velocity of air
x=0.35;//m distance
tf=(ts+ta)/2;// mean film temperature
rho=0.614;//kg/m^3
cp=1046;//J/kg.K
k=0.04593;// W/m.C
mu=29.7*10^(-6);//kg/m.s
Pr=0.675;,
Re=rho*U*x/mu;
Nux=0.332*Pr^(1/3)*Re^0.5*(ts/ta)^0.117;
hx=Nux*k/x;
h=2*hx;
Q=2*h*x*1*(ts-ta);
disp("W",Q,"heat transfer from both sides of the plate, per meter width =")

