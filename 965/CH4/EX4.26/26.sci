clc;
clear all;
disp("Time and Temperature")
R=300/1000;//m
a=1.12*10^(-4);//m^2/s
ti=20;//degree C
ta=480;// degree C
t=350;// degree C
tau=3*60;//seconds

M=a*tau/R^2;
erfM=0.32;
T1=erfM;

t=ta+T1*(ti-ta);
disp("degree C",t,"temperature  at the centre of surface T=")
t=350;//
T1=(t-ta)/(ti-ta);
M=0.23;
tau=M*(R^2)/a;

disp("sec",tau,"time required Tau =")


