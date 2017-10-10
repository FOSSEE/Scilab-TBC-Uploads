clc;
clear all;
disp("time required")
x=12/1000;//m
a=1.2*10^(-5);//m^2/s
ti=745;// degree C
ta=20;// degree C
t=595;// degree C


T1=(t-ta)/(ti-ta);
erfM=T1;
M=0.9;// from tables
tau=((x/M)^2)/(4*a);
disp("seconds",tau,"Tau =")


