clc;
clear all;
disp("Temperature & heat rate")
x=80/1000;// m
a=1.6*10^(-3);//m^2/h
ti=25;// degree C
ta=340;// degree C
k=0.94;// W/(m.C)
tau=8;//hours

M=x/(2*(a*tau)^0.5);
M
//erfM=0.37=T1;
T1=0.37;

t=ta+T1*(ti-ta);
disp("degree C",t,"temperature at the centre of slab T =")

Q=k*(ti-ta)*(exp(-M*M))/(3.1416*a*tau)^0.5;
disp("W/m^2",Q,"instantaneous heat flow rate Q =")
 Qs=k*(ti-ta)/(3.1416*a*tau)^0.5;
disp("W/m^2",Qs,"heat flow rate at the surface Qs =")
