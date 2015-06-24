clear;
clc;

//Example12.3[Radiation Incident on a small surface]
//Given:-
A1=3^10^(-4);//[m^2]
T1=600;//[k]
A2=5*10^(-4);//[m^2]
theta1=%pi*55/180,theta2=%pi*40/180;//[Radian]
r=0.75;//[m]
//Solution:-
w_2_1=(A2*cos(theta2))/(r^2);//[Steradian]
disp("sr",w_2_1,"The solid angle subtended by a2 when viewed from A1 is")
I1=(5.67*10^(-8))*(T1^4)/(%pi);//[W/m^2.sr]
disp("W/m^2.sr",I1,"The Intensity of radiation emitted by A1 is")
Q1_2=I1*(A1*cos(theta1))*w_2_1;//[W]
disp("W",Q1_2,"is ","Steradian",w_2_1,"through the solid angle","radians",theta1,"The rate of radiation energy emitted by A1 in the direction of")