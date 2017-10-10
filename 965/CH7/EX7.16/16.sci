clc;
clear all;
disp("Rate of cooling")

A=1;//m^2
T=20;// degree C
Ts=90;// degree C
U=2;//m/s velocity of air
rhog=2500;// kg/m^3 density of glass
mu=19.8*10^(-6);// N.s/m^2 viscosity
L=1;//m length 
k=0.0286;//W/m.C
cpa=1008;//J/kg.K
rhoa=1.076;// kg/m^3 density of air

Re=rhoa*U*L/mu;
Pr=mu*cpa/k;

Nu=0.664*Re^0.5*Pr^(1/3);
h=Nu*k/L;
disp("W/m^2.C",h,"Heat transfer coefficient =")
Q=2*h*A*(Ts-T);
disp("W",Q,"Heat transfer rate =")
t=3/1000;// thickness
m=rhog*A*t;// mass of glass
cp=670;//J/kg.K
delT=Q/(m*cp);
disp("degree C/s",delT,"Initial heating rate =")

