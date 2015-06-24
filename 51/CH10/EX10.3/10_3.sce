clc;
clear;
y=5;//ft
angle=40;//degree
l=12;//ft
rate=1.4;//ft per 1000 ft of length
K=1.49;
A=(l*y)+(y*y/tan(angle*%pi/180));//ft
P=(l+(2*y/sin(angle*%pi/180)));//ft
Rh=A/P;
S0=rate/1000;
x=K*(A)*(Rh^(2/3))*(S0^0.5);//where Rh=Q*n
n=0.012;
Q=x/n;//cfs
disp("cfs",Q,"The flowrate=")
V=Q/A;//ft/sec
Fr=V/(32.2*y)^0.5;
disp(Fr,"Froude number=")
