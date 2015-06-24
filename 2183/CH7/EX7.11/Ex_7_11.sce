//Example 7.11 // Multiplication factor
clc;
clear;
close;
//given data :
eta=80/100;// quantum efficiency
e=1.6*10^-19;
lamda=.88*10^-6;// in m
h=6.63*10^-34;// 
c=3*10^8;
I=12;// in micro-A
R=(eta*e*lamda)/(h*c);
P0=0.6*10^-6;// in W
Ip=P0*R*10^6;
M=I/Ip;
disp(M,"Multiplication factor,M = ")
