//Exa7
clc;
clear;
close;
//given data :
lambda=0.842; //in Angstrum
lambda=lambda*10^-10; // in meter
//theta=8degree 35minutes
theta=8+35/60;//in degree
n=1;//(first order)
//Formula n*lamda=2*d*sin(theta)
d=n*lambda/(2*sind(theta))
//For third Order reflection :
//Formula n*lamda=2*d*sin(theta)
n=3;//order
theta=asind(n*lambda/(2*d));
disp(round(theta),"Angle of incidence for third order reflection in degree : ");