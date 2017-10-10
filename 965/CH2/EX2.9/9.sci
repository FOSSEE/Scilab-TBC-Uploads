clc;
clear all;
disp("Heat transfer rate")
L=0.6;//m
r=.12;//m
theta=3.14/3;// adian=(60)degree
t1=125;// degree C
t2=25;// degree C
k0=115;// W/(m*C)
B=10^(-4);
tm=(t1+t2)/2;
km=k0*(1-B*tm);
A=(r^2)*theta/2;
Q=(-1)*km*A*(t2-t1)/L;
disp ("W",Q,"rate of heat transfer is = ")
