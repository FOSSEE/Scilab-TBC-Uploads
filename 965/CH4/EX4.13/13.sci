clc;
clear all;
disp("spherical thermocouple junction")
R=8/2000;//m
hg=40;//W/m^2.C
ha=10;//W/m^2.C
k=40;// W/m.C
c=420;// J/kg.C
rho=8000;// kg/m^3

As=4*3.1416*R*R;//m^2
V=4*3.1416*(R^3)/3;//m^3


tau1=rho*V*c/(hg*As);
disp("s",tau1,"tau*  =")

ta=300;// degree C
ti=40;//degree C
tau2=10;//s
X=-1*tau2/tau1;
t=ta+(ti-ta)*exp(X);
disp("degree C",t,"temperature during heating t =")

tau3=20;//s
tau4=rho*R*c/(3*ha);//s
disp("s",tau4,"tau* =")
ti=t;// degree C
X=-1*tau3/tau4;
ta=30;//degree C
t=ta+(ti-ta)*exp(X);//degree C
disp("degree C",t,"temperature during cooling t =")
