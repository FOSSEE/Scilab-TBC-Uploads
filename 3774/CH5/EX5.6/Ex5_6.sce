// exa 5.6 Pg 153
clc;clear;close;

// Given Data
n=5;// no. of rivets
P=45;// kN
alfa=30;// degree
tau=120;// MPa


Pd=P/n*1000;// N (direct shear load in rivet)
// C.G. of rivet group
// values below are collected direct from figure
x_bar=(3*200)/5;// mm
y_bar=(1*50+1*150+1*100+1*200)/5;// mm
ex=300+x_bar+y_bar;//mm
ey=100;//mm
l1=sqrt(x_bar**2+(y_bar/2)**2);// mm
l2=l1;//mm
l3=sqrt(100**2+80**2);// mm
l4=80;//mm
l5=l3;//mm

//2*F1*l1+2*F3*l3+F4*l4=P*cos(alfa)*ex+P*sin(alfa)*ey
F1=(P*1000*cosd(alfa)*ex+P*1000*sind(alfa)*ey)/(2*l1**2+2*l3**2+l4**2)*l1;//N
// rivet 1 is nearest
Beta = atand(x_bar/(y_bar/2));// degree
theta1=Beta-(90-alfa);// degree
R1=sqrt(Pd**2+F1**2+2*Pd*F1*cosd(theta1));// N (resultant force in rivet 1)
//R1=%pi/4*d0**2*tau
d0=sqrt(R1/(%pi/4*tau));// mm
printf('\n diameter of rivets = %.2f mm. Use d0 = 21.5 mm & d=20 mm for design.',d0)
// Note -  Ans in the textbook is wrong.
