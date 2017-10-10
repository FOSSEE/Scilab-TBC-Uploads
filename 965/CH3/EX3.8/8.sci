clc;
clear all;
disp("Heat loss rate")
ti=350;// degree C
to=50;// degree C
k=1.5;// W/(m*C)
x=0.3;// m
l=4.5;//m
b=3.75;//m
h=3;//m
Ai=2*(l*b+l*h+b*h);//m^2
y=4*(l+b+h);// length of edges
Sfce=y;
Sfcc=0.15*x;

Am=Ai+Sfce*.54*x+8*Sfcc*x;
Am
disp("m^2")
Q=k*Am*(ti-to)/x;
disp("W",Q,"rate of heat loss Q =")


