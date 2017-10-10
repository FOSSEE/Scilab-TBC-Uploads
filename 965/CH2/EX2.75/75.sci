clc;
clear all;
disp("Thickness of insulation")
r1=8/2;//mm
k=0.18;// W/(m*C)
ho=12.5;// W/(m^2*C)
rc=1000*k/ho;//mm
r2=rc;//mm
t=r2-r1;//mm
L=1;//m
disp("mm",t,"Thickness of insulation = ")

t1=45;// degree C
t2=20;// degree C
delT=t1-t2;
A=2*3.1416*L*r1/1000;
Q1=ho*A*delT;
disp("W/m",Q1,"heat flow per unit length (without insulation) = ")

//Q2=2*3.1416*L*(delT)/(1/(ho*r2)+(log(r2/r1))/k);
//Q2=0.495*(t2-20)
Q2=Q1;
t2=Q2/.495+20;
disp("degree C",t2," surface temperature of insulated cable t2 = ")

