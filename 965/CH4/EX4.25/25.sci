clc;
clear all;

disp("Maximum temperature rise")
a=1.25*10^(-5);//m^2/s
k=54;// W/(m.C)
A=4*360*10^(-4);//m^2
m=1600;//kg
v=90;// km/h
tau=9;//seconds

KE=0.5*m*v*v*(1000/3600)^2;
Q=KE/tau;
Qs=Q;
disp("W",Q,"heat flow rate at surface Qs =")
//Qs=-k*(ti-ta)/(3.1416*a*tau)^0.5;
delT=Qs*((3.1416*a*tau)^0.5)/(k*A);

disp("degree C",delT,"temperature rise ta-ti =")


