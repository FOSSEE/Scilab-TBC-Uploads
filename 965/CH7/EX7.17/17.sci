clc;
clear all;
disp("To find velocity")
w=1;//m width
L=1.5;//m length
Tp=90;// degree C
Ta=10;// degree C
Q=3.75*1000;// W rate of energy dissipation
rho=1.09;// kg/m^3
k=0.028;// W/m.C
cp=10007;// J/kg.C
mu=2.03*10^(-5);//kg/m-s viscosity
Pr=0.7;
A=L*w;//m^2
h=Q/(A*(Tp-Ta));
h
Nu=h*L/k;
Nu
//Nu=0.664*Re^0.5*Pr^(1/3)
Re=(Nu/(.664*Pr^(1/3)))^2;

U=Re*mu/(rho*L);
disp("m/s",U,"Velocity = ")
