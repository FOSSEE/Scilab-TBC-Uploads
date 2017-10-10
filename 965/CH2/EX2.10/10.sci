clc;
clear all;
disp("Heat loss rate")
L=0.2;//m
t1=300;// degree C
t2=30;// degree C
a=0.3;
b=5*10^(-6);
q= (a+(b/3)*(t1*t1+t1*t2+t2*t2))*(t1-t2)/L;// W/m^2 rate of heat transfer
disp ("W/m^2",q,"rate of heat transfer is = ")
