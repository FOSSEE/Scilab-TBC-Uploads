clc;
clear all;
disp("Required tube length")
m=50/60;//kg/sec
di=2.5/100;//m inner diameter
ts=100;// degree C
ti=25;// degree C
to=55;// degree C
cp=4187;//J/kg.C
t1=100-25;
t2=100-55;
tm=(t1-t2)/log(t1/t2);
Q=m*cp*(to-ti);//W
As=%pi/4*di^2;
;tw=(ts+(ti+to)/2)/2;// degree C temperature at which the properties of water should be taken
mu=405*10^(-6);// kg.m/s
rho=977.8;//kg/m^3
k=66.72/100;//W/m.C
U=m/(As*rho);//m/s
Re=rho*U*di/mu;
Pr=mu*cp/k;
Nu=0.023*Re^0.8*Pr^0.4;
h=Nu*k/di;// W/m^2.C
L=Q/(h*%pi*di*tm);//m
disp("m",L,"Required tube length =")



