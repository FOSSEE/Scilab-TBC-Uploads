//Exa 4.15
clc;
clear;
close;
//given data :
n=2;//no. of elements
//given : d=lambda/3 in m
delta=%pi/3;//in phase difference
disp("dr=2*%pi*d/lambda");
disp("Putting d=lambda/3 we get dr=2*%pi/3");
dr=2*%pi/3;// 
disp("psi=dr*cos(theta)+delta");
disp("psi=(2*%pi/3)*cos(theta)+%pi/3");
//Maxima :
disp("Maxima : cos((%pi/3)*cos(theta)+%pi/6)=1 .....Magnitude");
disp("(%pi/3)*cos(theta)+%pi/6=K*%pi");
disp("theta=acos(-1/2+3*k)");
disp("theta=+120,-120 degree");

//Minima :
disp("Minima : cos((%pi/3)*cos(theta)+%pi/6)=0");
disp("(%pi/3)*cos(theta)+%pi/6=(2*k+1)*%pi/2");
disp("theta=acos(-1/2+(3/2)*(2*k+1))");
disp("theta=0 degree");