clc;
clear all;
disp("time for evaporation")
L=2.8/1000;// m
T=20+273;// K
D=8.3*10^(-6);// m^2/s
A=3.1416*(5.5/2)^2;//m^2
pb1=0.13;// bar
pb2=0;
Mb=78;
p=1.013;//bar
pa1=p-pb1;//bar
pa2=p-pb2;//bar
G=8314;
rho=880;//kg/m^2
h=1/1000;//m
mb=(D*A*Mb*p*10^5/(G*T*L))*log((pa2)/(pa1));//kg/s
disp("kg/s",mb,"diffusion rate of benzene mb = ")
M=A*h*rho
t=M/(mb*60); //h
disp("min",t,"time required t = ")
