clc;
clear all;
disp("ingot time required")
R=50/2000;//m
L=200/1000;//m
k=60;// W/m.C
c=200;// J/kg.C
rho=800;// kg/m^3
hw=200;//W/m^2.C
ha=20;//W/m^2.C
ta=30;// degree C
ti=800;// degree C

Lc=R/2;
Bi=hw*Lc/k;
disp(Bi,"Bi =")
t=500;// degree C
As=2*3.1416*R*L;//m^2
V=3.1416*R*R*L;//m^3
X=hw*As/(rho*V*c)
tau1=(-1/X)*log((t-ta)/(ti-ta));
disp(tau1,"tau1 =")

t=100;// degree C
ti=500// degree C
X=ha*As/(rho*V*c);
tau2=(-1/X)*log((t-ta)/(ti-ta));
disp(tau2,"tau2 =")

tau=tau1+tau2;
disp("min",tau/60,"total time, tau =")


